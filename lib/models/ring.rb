class Ring < ActiveRecord::Base

    has_many :ring_bearers
    has_many :characters, through: :ring_bearers

  
    def self.all_rings
        prompt = TTY::Prompt.new
        font = TTY::Font.new(:straight)
        ring_array = Ring.all.map {|ring| ring.name}
        # ham = ring_array.map{ |h|  font.write("#{h}")}
        ring_name = prompt.select(" ", ring_array)
        # binding.pry
        ring_info = Ring.all.find_by(name: ring_name)
        puts "Name: #{ring_info.name}"
        puts "Maker: #{ring_info.maker}"
        puts "Power: #{ring_info.power}"
        puts "Alignment: #{ring_info.alignment}"
        puts "Location: #{ring_info.location}"
        puts "Creation Date: #{ring_info.creation_date}"
        characters_array = RingBearer.all.select {|ring_bearer| ring_bearer.ring_id == ring_info.id}
        if characters_array.length > 0
            puts "Current Bearer: #{Character.all.find_by(id: characters_array.last.character_id).name}"
        else
            puts "This ring is not currently being worn."
        end
    end

    def self.all_good_rings
        prompt = TTY::Prompt.new
        ring_array = Ring.all.select {|ring| ring.alignment == "Good"}
        good_ring_names = ring_array.map {|ring| ring.name}
        ring_name = prompt.select(" ", good_ring_names)
        #  binding.pry
        ring_info = Ring.all.find_by(name: ring_name)
        puts "Name: #{ring_info.name}"
        puts "Maker: #{ring_info.maker}"
        puts "Power: #{ring_info.power}"
        puts "Alignment: #{ring_info.alignment}"
        puts "Location: #{ring_info.location}"
        puts "Creation Date: #{ring_info.creation_date}"
        characters_array = RingBearer.all.select {|ring_bearer| ring_bearer.ring_id == ring_info.id}
        if characters_array.length > 0
            puts "Current Bearer: #{Character.all.find_by(id: characters_array.last.character_id).name}"
        else
            puts "This ring is not currently being worn."
        end
    end

    def self.all_evil_rings
        prompt = TTY::Prompt.new
        ring_array = Ring.all.select {|ring| ring.alignment == "Evil"}
        evil_ring_names = ring_array.map {|ring| ring.name}
        ring_name = prompt.select(" ", evil_ring_names)
        # binding.pry
        ring_info = Ring.all.find_by(name: ring_name)
        puts "Name: #{ring_info.name}"
        puts "Maker: #{ring_info.maker}"
        puts "Power: #{ring_info.power}"
        puts "Alignment: #{ring_info.alignment}"
        puts "Location: #{ring_info.location}"
        puts "Creation Date: #{ring_info.creation_date}"
        characters_array = RingBearer.all.select {|ring_bearer| ring_bearer.ring_id == ring_info.id}
        if characters_array.length > 0
            puts "Current Bearer: #{Character.all.find_by(id: characters_array.last.character_id).name}"
        else
            puts "This ring is not currently being worn."
        end
    end

    def self.all_lost_rings
        prompt = TTY::Prompt.new
        ring_array = Ring.all.select {|ring| ring.location == "Lost"}
        lost_ring_names = ring_array.map {|ring| ring.name}
        ring_name = prompt.select(" ", lost_ring_names)
        # binding.pry
        ring_info = Ring.all.find_by(name: ring_name)
        puts "Name: #{ring_info.name}"
        puts "Maker: #{ring_info.maker}"
        puts "Power: #{ring_info.power}"
        puts "Alignment: #{ring_info.alignment}"
        puts "Location: #{ring_info.location}"
        puts "Creation Date: #{ring_info.creation_date}"
        characters_array = RingBearer.all.select {|ring_bearer| ring_bearer.ring_id == ring_info.id}
        if characters_array.length > 0
            puts "Last Known Bearer: #{Character.all.find_by(id: characters_array.last.character_id).name}"
        else
            puts "This ring is not currently being worn."
        end
        #the variable is for the Ring Found method
        name_selection = ring_info.name
        return name_selection
        # binding.pry
    end

    #Helper method--------------------------------------------
    def self.alive_rings 
        rings = Ring.all.select{ |ring| ring.deleted == nil}
        rings.map {|ring| ring.name}
    end
    #Helper method--------------------------------------------


    def self.ring_found
        prompt = TTY::Prompt.new
        puts "Congratulations on finding a Ring of Power! Amazing!!"
        puts "Below are all the lost Rings of Power. Which one did you find?"
        name = self.all_lost_rings
        ring = Ring.all.find {|ring| ring.name == name}
        new_location = prompt.ask ("Where did you find #{ring.name}?")
        ring.update(location: new_location)
        # new_name = prompt.ask ("Who currently has #{ring.name}?")
        # new_bearer = Character.all.find_or_create_by {|person| person.name == new_name}
        # RingBearer.create(character_)
    end


    def self.forge_ring
          puts "Ring Forge"
        prompt = TTY::Prompt.new
        ring_name = prompt.ask ("What is the name of your ring?")
        ring_maker = prompt.ask ("Who forged #{ring_name}?")
        ring_location = prompt.ask ("Where was #{ring_name} forged?")
        ring_power = prompt.ask ("What is the special power of #{ring_name}?")
        ring_alignment  = prompt.select("Is #{ring_name} good or evil?", ["Good", "Evil"])
        ring_creation_date = prompt.ask ("What year was #{ring_name} made?")
        #  binding.pry
        while ring_creation_date.to_i > 2020 or ring_creation_date.to_i < 1
            # binding.pry
            puts "Invalid input. Please enter a valid year."
            ring_creation_date = prompt.ask ("What year was #{ring_name} made?")
        end
        new_ring = Ring.create(name: ring_name, maker: ring_maker, power: ring_power, alignment: ring_alignment, location: ring_location, creation_date: ring_creation_date)

    end

    def self.delete_ring
        prompt = TTY::Prompt.new
        puts "Welcome to Mount Doom"
        choice = prompt.select("Do you wish to cast a Ring into the fire?", ["Yes, I want to destroy a ring!", "No, I'll be on my way"])
        active_rings = Ring.alive_rings
        if active_rings.length > 0 
            if choice == "Yes, I want to destroy a ring!"
                ring_choice = prompt.select("Please choose a Ring of Power to destroy", active_rings)
                #RIDDLES********************************************************************
                gollum_result = Riddle.gollum_riddles
                if gollum_result == "failed"
                    return "You failed in your quest to destroy a Ring of Power"
                end

                bilbo_result = Riddle.bilbo_riddles
                if bilbo_result == "failed"
                    return "You failed in your quest to destroy a Ring of Power"
                end
                #RIDDLES********************************************************************
                deleted_ring = Ring.all.find {|ring| ring.name == ring_choice}
                deleted_ring.update(deleted: "Yes")
                    if deleted_ring.alignment == "Good"
                        puts "A Good Ring of Power has been destroyed! Darkness is spreading!"
                    else 
                        puts "An Evil Ring of Power has been destroyed! The scales have shifted!"
                    end
            else
                puts "You will be returned to the Table of Contents" 
                open_book    
            end
        else
            puts "There are no Rings of Power to destroy! Forge a new one."
        end

    end

end