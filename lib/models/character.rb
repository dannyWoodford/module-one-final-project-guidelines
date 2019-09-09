class Character < ActiveRecord::Base

    has_many :ring_bearers
    has_many :rings, through: :ring_bearers



    
end