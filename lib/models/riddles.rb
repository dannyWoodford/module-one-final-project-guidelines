 class Riddle

    def self.gollum_riddles
        prompt = TTY::Prompt.new
        puts "One does not simply walk into Mordor."
        puts "Its Black Gates are guarded by more than just Orcs." 
        puts "There is evil there that does not sleep, and the Great Eye is ever watchful." 
        puts" It is a barren wasteland, riddled with fire and ash and dust."
        puts "The very air you breathe is a poisonous fume."
        puts " "
        puts "Your first obstacle is to answer one of Gollum's riddles"
        int = rand(1..5)

        if int == 1
            puts " "
            puts "What has roots as nobody sees,"
            puts "Is taller than trees,"
            puts "Up, up it goes,"
            puts "And yet never grows?"
            puts " "
            answer = prompt.ask("")
            if answer.downcase == "mountain"
                #obstacle2
                result = "passed"
                 result
            else
                puts "You failed to get passed the guardians of the Black Gate of Mordor"
                result = "failed"
                 result
            end
        elsif int == 2
            puts " "
            puts "Voiceless it cries,"
            puts "Wingless flutters,"
            puts "Toothless bites,"
            puts "Mouthless mutters."
            puts " "
            answer = prompt.ask("")
            if answer.downcase == "wind"
                #obstacle2
                result = "passed"
                 result
            else
                puts "You failed to get passed the guardians of the Black Gate of Mordor"
                result = "failed"
                 result
            end
        elsif int == 3
            puts " "
            puts "It cannot be seen, cannot be felt,"
            puts "Cannot be heard, cannot be smelt."
            puts "It lies behind stars and under hills,"
            puts "And empty holes it fills."
            puts "It comes first and follows after,"
            puts "Ends life, kills laughter."
            puts " "
            answer = prompt.ask("")
            if answer.downcase == "dark"
                #obstacle2
                result = "passed"
                 result
            else
                puts "You failed to get passed the guardians of the Black Gate of Mordor"
                result = "failed"
                 result
            end
        elsif int == 4
            puts " "
            puts "Alive without breath,"
            puts "As cold as death;"
            puts "Never thirsty, ever drinking,"
            puts "All in mail never clinking."
            puts " "
            answer = prompt.ask("")
            if answer.downcase == "fish"
                #obstacle2
                result = "passed"
                result
            else
                puts "You failed to get passed the guardians of the Black Gate of Mordor"
                result = "failed"
                result
            end
        elsif int == 5
            puts " "
            puts "This thing all things devours:"
            puts "Birds, beasts, trees, flowers;"
            puts "Gnaws iron, bites steel;"
            puts "Grinds hard stones to meal;"
            puts "Slays king, ruins town,"
            puts "And beats high mountain down."
            puts " "
            answer = prompt.ask("")
            if answer.downcase == "time"
                #obstacle2
                result = "passed"
                result
            else
                puts "You failed to get passed the guardians of the Black Gate of Mordor"
                result = "failed"
                result
            end
        end
    end#end of gollum riddles

    def self.bilbo_riddles
        prompt = TTY::Prompt.new

       
        # binding.pry
        puts "You passed your first test and crossed through the Black Gate"
        puts "...but there is quite a distance to go before Mount Doom"
        puts "Your second obstacle is to answer one of Bilbo's riddles"
        int = rand(1..3)

        if int == 1
            puts " "
            puts "Thirty white horses on a red hill,"
            puts "First they champ,"
            puts "Then they stamp,"
            puts "Then they stand still."
            puts " "
            answer = prompt.ask("")
            if answer.downcase == "teeth"
                #obstacle2
                result = "passed"
                 result
            else
                puts "The great Eye of Sauron spotted you coming up the plains of Gorgoroth"
                result = "failed"
                 result
            end
        elsif int == 2
                text = <<-TER

                An eye in a blue face
                Saw an eye in a green face.
                That eye is like to this eye
                Said the first eye,
                But in low place,
                Not in high place.
                
                TER
                puts text

                answer = prompt.ask("")
                if answer.downcase == "the sun" || answer.downcase == "sun"
                    #obstacle2
                    result = "passed"
                     result
                else
                    puts "The great Eye of Sauron spotted you coming up the plains of Gorgoroth"
                    result = "failed"
                     result
                end
        elsif int == 3
                text = <<-TTR

                A box without hinges, key, or lid,
                Yet golden treasure inside is hid.
                
            TTR

                answer = prompt.ask("")
                if answer.downcase == "an egg" || answer.downcase == "egg"
                    #obstacle2
                    result = "passed"
                     result
                else
                    puts "The great Eye of Sauron spotted you coming up the plains of Gorgoroth"
                    result = "failed"
                     result
                end
            end #end of biblo ifs
        end #end of bilbo class

        
end#end of riddle class



