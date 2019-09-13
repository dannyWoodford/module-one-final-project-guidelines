class Character < ActiveRecord::Base

    has_many :ring_bearers
    has_many :rings, through: :ring_bearers

    def self.all_characters
        prompt = TTY::Prompt.new
        character_array = Character.all.map {|people| people.name}
        character_name = prompt.select(" ", character_array, per_page: 1500)
        chr_info = Character.all.find_by(name: character_name)
        puts "Name: #{chr_info.name}"
        puts "Age: #{chr_info.age}"
        puts "Race: #{chr_info.race}"
        rings_array = RingBearer.all.select {|ring_bearer| ring_bearer.character_id == chr_info.id}
        # binding.pry
        if rings_array.length > 0
            puts "Current Ring: #{Ring.all.find_by(id: rings_array.last.ring_id).name}"
        else
            puts "This person is not wearing a ring."
        end
    end
    
    def self.all_characters_by_race
        prompt = TTY::Prompt.new
        race_array = Character.all.map { |people| people.race}
        race = prompt.select("Choose a Race", race_array.uniq)
        race_group = Character.all.select {|instance| instance.race == race }
        group_names = race_group.map { |guy| guy.name}
        person = prompt.select("Below is the list of each #{race}", group_names, per_page: 150)
        chr_info = Character.all.find_by(name: person)
            puts "Name: #{chr_info.name}"
            puts "Age: #{chr_info.age}"
            puts "Race: #{chr_info.race}"
        rings_array = RingBearer.all.select {|ring_bearer| ring_bearer.character_id == chr_info.id}
        # binding.pry
        if rings_array.length > 0
            puts "Current Ring: #{Ring.all.find_by(id: rings_array.last.ring_id).name}"
        else
            puts "This person is not wearing a ring."
        end
    end

    def self.active_ring_bearers
        prompt = TTY::Prompt.new
        active_rings = Ring.all.select{ |ring| ring.deleted == nil }
        beared_rings = active_rings.map do |active_ring| 
                            RingBearer.all.select {|rb| rb.ring_id == active_ring.id}
                        end
        latest_bearers = beared_rings.map do |ring_history|
                          ring_history.max_by {|info| info.date_lost.to_i} 
                        end
        #  binding.pry
         non_nil_bearers = latest_bearers.reject {|bearer| bearer == nil}  
        latest_ids = non_nil_bearers.map{|bearer| bearer.character_id}
        # binding.pry
        character_objects =  latest_ids.map do |id_number|
                                 Character.all.select {|character| character.id == id_number}
                            end.flatten
        character_array = character_objects.map {|object| object.name}
        character_name = prompt.select(" ", character_array, per_page: 150)
        chr_info = Character.all.find_by(name: character_name)
        puts "Name: #{chr_info.name}"
        puts "Age: #{chr_info.age}"
        puts "Race: #{chr_info.race}"
        rings_array = RingBearer.all.select {|ring_bearer| ring_bearer.character_id == chr_info.id}
        puts "Current Ring: #{Ring.all.find_by(id: rings_array.last.ring_id).name}"
    
    end
    
    def self.add_person
        prompt = TTY::Prompt.new
        puts "Tell us his/her story!"
        puts ""
        name = prompt.ask("What is their name?")
        test_array = Character.all.select {|instance| instance.name.downcase == name.downcase }
        # binding.pry
        if test_array.length > 0   
            puts "That person already exists in the history books!"        
            response = prompt.select("Would you like to create another person or go to the Table of Contents", ["Create another person", "Go to the Table of Contents"])
            if response == "Create another person"
                self.add_person
            end
        else
            age = prompt.ask("How old is #{name}?")
            while age.to_i < 1
                puts "Invalid input. Please try again."
                age = prompt.ask("How old is #{name}?")
            end
            race = prompt.select("What race is #{name}?", ["Man", "Elf", "Wizard", "Hobbit", "Ent", "Dwarf", "Dragon", "Orc", "Uruk-Hai"], per_page: 15)
            Character.create(name: name, age: age, race: race)
            puts "Congrats on adding Dave to the History Books!"
            puts "Name: #{name}"
            puts "Age: #{age}"
            puts "Race: #{race}"
        end
    end


end