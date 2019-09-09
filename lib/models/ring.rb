class Ring < ActiveRecord::Base

    has_many :ring_bearers
    has_many :characters, through: :ring_bearers

    def ring_lost
        if self.location == "unknown"
            puts "The ring is lost"
        else
            puts "No, #{self.name} is in #{self.location}."
        end
    end

    def ring_found(new_location)
        self.location = new_location
        puts "The #{self.name}, is now in #{self.location}"
        self.update(location: new_location)
    end

    def forge_ring(name,maker,power,alignment,location,creation_date)
        Ring.create(name: name, maker: maker, power: power, alignment: alignment, location: location, creation_date: Time.now.year)
    end


end