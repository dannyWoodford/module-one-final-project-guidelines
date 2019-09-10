class Ring < ActiveRecord::Base

    has_many :ring_bearers
    has_many :characters, through: :ring_bearers

  
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
        # binding.pry
        while ring_creation_date.to_i > 2020 or ring_creation_date.to_i < 0
            # binding.pry
            puts "Invalid input. Please enter a valid year."
            ring_creation_date = prompt.ask ("What year was #{ring_name} made?")
        end
        new_ring = Ring.create(name: ring_name, maker: ring_maker, power: ring_power, alignment: ring_alignment, location: ring_location, creation_date: ring_creation_date)

    end


end