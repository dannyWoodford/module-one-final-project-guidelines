class RingBearer < ActiveRecord::Base

    belongs_to :character 
    belongs_to :ring



    def self.create_ring_bearer
        prompt = TTY::Prompt.new
        alive = Ring.alive_rings
        if alive.length > 0
            # all_characters = Character.all.map {|people| people.name}

            race_array = Character.all.map { |people| people.race}
            race = prompt.select("Choose a Race", race_array.uniq, per_page: 15)
            race_group = Character.all.select {|people| people.race == race }
            group_names = race_group.map { |guy| guy.name}
            person = prompt.select("Below is the list of each #{race}", group_names, per_page: 150)
            ring = prompt.select("Select which Ring of Power you would like to give", alive, per_page: 50)
            # binding.pry
            character = Character.all.find {|chr| chr.name == person}
            ring_of_power = Ring.all.find {|jewelry| jewelry.name == ring}
            # binding.pry
            RingBearer.create(character_id: character.id, ring_id: ring_of_power.id)
        else
            puts "There are no active Rings of Power! Forge a new one."
        end
    end


end