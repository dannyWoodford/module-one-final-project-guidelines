class RingBearer < ActiveRecord::Base

    belongs_to :character 
    belongs_to :ring



    def self.create_ring_bearer
        prompt = TTY::Prompt.new
        alive = Ring.alive_rings
        if alive.length > 0
            all_characters = Character.all.map {|people| people.name}
            rb_hash = prompt.collect do
                key(:ring).select("Select which Ring of Power you would like to give", alive)
                key(:name).select("Select a person who bore this Ring of Power", all_characters)
            end
            name = rb_hash[:name]
            ring = rb_hash[:ring]
            # binding.pry
            character = Character.all.find {|person| person.name == name}
            ring_of_power = Ring.all.find {|jewelry| jewelry.name == ring}
            # binding.pry
            RingBearer.create(character_id: character.id, ring_id: ring_of_power.id)
        else
            puts "There are no active Rings of Power! Forge a new one."
        end
    end


end