class Character < ActiveRecord::Base

    has_many :ring_bearers
    has_many :rings, through: :ring_bearers

    def self.all_characters
        prompt = TTY::Prompt.new
        character_array = Character.all.map {|people| people.name}
        character_name = prompt.select(" ", character_array)
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
        person = prompt.select("Below is the list of each #{race}", group_names)
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

    # def self.all_characters_with_rings
    #     prompt = TTY::Prompt.new
    #     character_array = Character.all.map {|people| people.name}
    #     character_name = prompt.select(" ", character_array)
    #     chr_info = Character.all.find_by(name: character_name)
    #     puts "Name: #{chr_info.name}"
    #     puts "Age: #{chr_info.age}"
    #     puts "Race: #{chr_info.race}"
    #     rings_array = RingBearer.all.select {|ring_bearer| ring_bearer.character_id == chr_info.id}
    #     # binding.pry
    #     if rings_array.length > 0
    #         puts "Current Ring: #{Ring.all.find_by(id: rings_array.last.ring_id).name}"
    #     else
    #         puts "This person is not wearing a ring."
    #     end
    # end
    

    
end