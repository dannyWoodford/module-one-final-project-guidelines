require_relative '../config/environment'
require "tty-prompt"

prompt = TTY::Prompt.new


intro_text = <<-INT
                                                Welcome Middle Earth Historian

                              *********************************************************************         
                                                   
                                        Ash nazg durbatulûk, ash nazg gimbatul,
                                        Ash nazg thrakutulûk agh burzum-ishi krimpatul.

                                        Three Rings for the Elven-kings under the sky,
                                        Seven for the dwarf-lords in their halls of stone,
                                        Nine for Mortal Men doomed to die,
                                        One for the Dark Lord on his dark throne,
                                        In the Land of Mordor where the Shadows lie.
                                        One Ring to rule them all, One Ring to find them,
                                        One Ring to bring them all and in the darkness bind them
                                        In the Land of Mordor where the Shadows lie.

                              *********************************************************************

                     This book is record for all the Rings of Power and of the brave men and women who bore them
                                    
                                                

INT

puts intro_text

# user_name = gets.chomp

# hello_name = <<-TTR
#                                                         Hello #{user_name}!


# TTR

# puts hello_name

def self.open_book
    prompt = TTY::Prompt.new

    toc_text = <<-TOC
                                                        TABLE OF CONTENTS

                                                ---------------------------------        
                                        Please make a selection in the Table of Contents


    TOC
    
    puts toc_text
    selection = prompt.select(' ', ['History of the Rings of Power','History of the Ring Bearers', 'Forge a new Ring', 'Ring Found!', 'Add Person','Create a new record of a Ring Bearer', 'Destroy a Ring of Power', 'Close the Book'], per_page: 15)
 
    if selection == 'History of the Ring Bearers'
        puts 'History of the Ring Bearers'
        character_selection = prompt.select('', ['All', 'By Race', 'Active Ring Bearers'])
            if character_selection == 'All'
                Character.all_characters
                open_book
            elsif character_selection == "By Race"
                Character.all_characters_by_race
            elsif character_selection == "Active Ring Bearers"
                Character.active_ring_bearers
            end
    elsif selection == 'History of the Rings of Power'
        puts 'History of the Rings of Power'
        ring_selection = prompt.select('', ['All', 'Good Rings', 'Evil Rings', 'Lost Rings'])
            if ring_selection == "All"
                Ring.all_rings
            elsif ring_selection == 'Good Rings'
                Ring.all_good_rings
            elsif ring_selection == 'Evil Rings'
                Ring.all_evil_rings
            elsif ring_selection == 'Lost Rings'
                Ring.all_lost_rings
            end

    elsif selection == "Forge a new Ring"
        Ring.forge_ring
    elsif selection == "Ring Found!"
        
        Ring.ring_found

    elsif selection == "Add Person"
        puts "Tell us his/her story!"
        Character.add_person
        open_book
    elsif selection == "Create a new record of a Ring Bearer"
        RingBearer.create_ring_bearer

    elsif selection == "Destroy a Ring of Power"
        Ring.delete_ring
    end
    # else
        # Close the Book
end



self.open_book

# ring = prompt.select("Choose a ring", ["The one Ring", "Vilya", "Narya", "Ring Of Men"])

# # binding.pry
# answer = Ring.find_by(name: "#{ring}")
# # binding.pry
# location = prompt.ask("You found this ring, where did you find it?")
# answer.ring_found(location)


puts "HELLO WORLD"



