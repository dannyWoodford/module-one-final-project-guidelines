require_relative '../config/environment'
require "tty-prompt"

prompt = TTY::Prompt.new

puts "Welcome Middle Earth Historian!"
puts "This book holds records all Rings of Power, lost or found, and of the brave men and women who bore them."
puts "What is your name scholar?"

puts "TABLE OF CONTENTS"

selection = prompt.select(' ', ['History of the Ring Bearers', 'History of the Rings of Power', 'Add your story to the Book'])

if selection == 'History of the Ring Bearers'
    puts 'History of the Ring Bearers'
    character_selection = prompt.select('', ['All', 'By Race', 'Active Ring Bearers'])
        if character_selection == 'All'
            #method for returning all characters
        elsif character_selection == "By Race"
            #show all the races and then return elves etc.
        else    
            #returns all those who carry a ring
        end
elsif selection == 'History of the Rings of Power'
    puts 'History of the Rings of Power'
    ring_selection = prompt.select('', ['All', 'Good Rings', 'Evil Rings', 'Lost Rings'])
        if ring_selection == "All"
            #method for returning all rings
        elsif ring_selection == 'Good Rings'
            #method for returning aligned rings
        elsif ring_selection == 'Bad Rings'
            #method for returning aligned rings
        else 
            #returns lost rings by checking the ring location for 'Lost'
        end


end




# ring = prompt.select("Choose a ring", ["The one Ring", "Vilya", "Narya", "Ring Of Men"])

# # binding.pry
# answer = Ring.find_by(name: "#{ring}")
# # binding.pry
# location = prompt.ask("You found this ring, where did you find it?")
# answer.ring_found(location)


puts "HELLO WORLD"
