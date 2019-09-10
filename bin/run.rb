require_relative '../config/environment'
require "tty-prompt"

prompt = TTY::Prompt.new


puts "Welcome Middle Earth Historian!"
puts "This book is record for all the Rings of Power and of the brave men and women who bore them."
puts "What is your name scholar?"

user_name = gets.chomp

puts "Hello #{user_name}"

def open_book
    prompt = TTY::Prompt.new
    puts "TABLE OF CONTENTS"
    puts "Please make a selection in the Table of Contents."

    selection = prompt.select(' ', ['History of the Rings of Power','History of the Ring Bearers', 'Forge a new Ring', 'Ring Found!', 'Add Person','Change Ring Bearer', 'A Ring of Power has been destroyed!', 'Close the Book' ])
 
    if selection == 'History of the Ring Bearers'
        puts 'History of the Ring Bearers'
        character_selection = prompt.select('', ['All', 'By Race', 'Active Ring Bearers'])
            if character_selection == 'All'
                Character.all_characters
                open_book
            elsif character_selection == "By Race"
                Character.all_characters_by_race
            elsif character_selection == "Active Ring Bearers"
                #returns all those who carry a ring
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
            else 
                #returns lost rings by checking the ring location for 'Lost'
            end

    elsif selection == "Forge a new Ring"
        Ring.forge_ring
    elsif selection == "Ring Found!"
        puts "Congratulations on finding a Ring of Power! Amazing!!"
        #Prompts user for ring name and new locatin
        #if the ring name does not exist then we will puts "Sorry, the ring you have entered does not exist."

    elsif selection == "Add Person"
        puts "Tell us his/her story!"
        #prompts user for needed info in Character.create

    elsif selection == "Change Ring Bearer"
        puts "Who has put on the Rings of Power"
        #prompts ring name, who is wearing it, and its new location.
        #if ring name doesnt exist puts "Sorry, the ring you have entered does not exist."

    elsif selection == "A Ring of Power has been destroyed!"
        # puts "Welcome to Mount Doom"
        # puts "Do you wish to cast a Ring of Power into the fires?"
        # prompt.select(" ", ["Yes, I wish to destroy a Ring!", "No, I do not."])
        puts "Has a Ring of Power been cast in to the fires of Mount Doom?"
        prompt.select(" ", ["Yes, a ring has been destroyed!", "No, it has not."])
        #will prompt for a name and then delete the foreign key conenctions on the RingBearer instance?
        #if a good ring has been destroyed puts a negative message
        #if a bad ring has been destroyed puts a positive message
        #if the One Ring has been destroyed....EAGLES!
        end
    # else
        # Close the Book
end

open_book

# ring = prompt.select("Choose a ring", ["The one Ring", "Vilya", "Narya", "Ring Of Men"])

# # binding.pry
# answer = Ring.find_by(name: "#{ring}")
# # binding.pry
# location = prompt.ask("You found this ring, where did you find it?")
# answer.ring_found(location)


puts "HELLO WORLD"
