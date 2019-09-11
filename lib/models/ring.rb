class Ring < ActiveRecord::Base

    has_many :ring_bearers
    has_many :characters, through: :ring_bearers

  
    def self.all_rings
        prompt = TTY::Prompt.new
        ring_array = Ring.all.map {|ring| ring.name}
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

    def self.ring_found
        prompt = TTY::Prompt.new
        puts "Congratulations on finding a Ring of Power! Amazing!!"
        puts "Below are all the lost Rings of Power. Which one did you find?"
        name = self.all_lost_rings
        ring = Ring.all.find {|ring| ring.name == name}
        new_location = prompt.ask ("Where did you find #{ring.name}?")
        ring.update(location: new_location)
        new_bearer = prompt.ask ("Who currently has #{ring.name}?")
        #ring.update(current_bearer: new_bearer)
        # binding.pry

    end




    

    # def ring_lost
    #     if self.location == "unknown"
    #         puts "The ring is lost"
    #     else
    #         puts "No, #{self.name} is in #{self.location}."
    #     end
    # end

    # def ring_found(new_location)
    #     self.location = new_location
    #     puts "The #{self.name}, is now in #{self.location}"
    #     self.update(location: new_location)
    # end

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


end