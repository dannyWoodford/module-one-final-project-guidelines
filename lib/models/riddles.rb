 class Riddle

    def self.gollum_riddles
        prompt = TTY::Prompt.new
        puts""
        puts""
        puts "One does not simply walk into Mordor."
        puts "Its Black Gates are guarded by more than just Orcs." 
        puts "There is evil there that does not sleep, and the Great Eye is ever watchful." 
        puts" It is a barren wasteland, riddled with fire and ash and dust."
        puts "The very air you breathe is a poisonous fume."
        puts " "
        puts ""
        puts "Your first obstacle is to answer one of Gollum's riddles"
        int = rand(1..5)

        if int == 1
            text = <<-TTR  
            
                                               .-.---------------------------------.-.
                                              ((o))                                   )
                                               \U/_______          _____         ____/
                                                 |                                  |
                                                 |  What has roots as nobody sees,  |
                                                 |  Is taller than trees,           |
                                                 |  Up, up it goes,                 |
                                                 |  And yet never grows?            |
                                                 |                                  |
                                                 |____    _______    __  ____    ___|
                                                /A\                                  \

                                                '-'----------------------------------'
        
             TTR
            puts text
              
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
             text = <<-TTR 

                                        .-.---------------------------------.-.
                                       ((o))                                   )
                                        \U/_______          _____         ____/
                                          |                                  |
                                          |       Voiceless it cries,        |
                                          |       Wingless flutters,         |
                                          |       Toothless bites,           |
                                          |       Mouthless mutters.         |
                                          |                                  |
                                          |____    _______    __  ____    ___|
                                          /A\                                  \

                                          '-'----------------------------------'

             TTR

             puts text
              
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
             text = <<-TTR

                                                .-.---------------------------------------.-.
                                               ((o))                                         )
                                                \U/_______          _____         __________/
                                                 |                                         |
                                                 |  It cannot be seen, cannot be felt,     |
                                                 |  Cannot be heard, cannot be smelt.      |
                                                 |  It lies behind stars and under hills,  |
                                                 |  And empty holes it fills.              |
                                                 |  It comes first and follows after,      |
                                                 |  Ends life, kills laughter.             |
                                                 |                                         |
                                                 |____    _______    __  ____  _______  ___|
                                                /A\                                         \
   
                                                '-'-----------------------------------------'

             TTR

             puts text
              
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
             text = <<-TTR

                                            .-.----------------------------------.-.
                                           ((o))                                    )
                                            \U/_______          _____         _____/
                                             |                                    |
                                             |     Alive without breath,          |
                                             |     As cold as death;              |
                                             |     Never thirsty, ever drinking,  |
                                             |     All in mail never clinking.    |
                                             |                                    |
                                             |____    _______    __  ____    ___  |
                                            /A\                                    \
   
                                            '-'------------------------------------'
                                            

            TTR

            puts text

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
            text = <<-TTR

                                              .-.----------------------------------.-.
                                             ((o))                                    )
                                              \U/_______          _____         _____/
                                               |                                    |
                                               |     This thing all things devours: |
                                               |     Birds, beasts, trees, flowers; |
                                               |     Gnaws iron, bites steel;       |
                                               |     Grinds hard stones to meal;    |
                                               |     Slays king, ruins town,        |
                                               |     And beats high mountain down.  |
                                               |                                    |
                                               |____    _______    __  ____    _  __|
                                              /A\                                    \
   
                                              '-'------------------------------------'

            TTR
            
            puts text

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
        puts " "
        puts "You passed your first test and crossed through the Black Gate"
        puts "...but there is quite a distance to go before Mount Doom"
        puts "Your final obstacle is to answer one of Bilbo's riddles"

        int = rand(1..3)

        if int == 1
             text = <<-TTR 

                                                .-.------------------------------------.-.
                                               ((o))                                      )
                                                \U/_______          _____          ______/
                                                 |                                      |
                                                 |   Thirty white horses on a red hill, |
                                                 |   First they champ,                  |
                                                 |   Then they stamp,                   |
                                                 |   Then they stand still.             | 
                                                 |____    _______    __  ____    _____ _|
                                                /A\                                      \
   
                                                '-'--------------------------------------'

            TTR

            puts text
              
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

                                            .-.---------------------------------.-.
                                           ((o))                                   )
                                            \U/_______          _____         ____/
                                             |                                   |
                                             |     An eye in a blue face         |
                                             |     Saw an eye in a green face.   |
                                             |     That eye is like to this eye  |
                                             |     Said the first eye,           |
                                             |     But in low place,             |
                                             |     Not in high place.            |
                                             |                                   |
                                             |____    _______    __  ____    ____|
                                            /A\                                    \
   
                                            '-'------------------------------------'
                                                    
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

                                            .-.--------------------------------------.-.
                                           ((o))                                        )
                                            \U/_______          _____         _________/
                                             |                                        |
                                             |    A box without hinges, key, or lid,  |
                                             |    Yet golden treasure inside is hid.  |
                                             |____    _______    __  ____    ______  _|   
                                            /A\                                        \
   
                                            '-'----------------------------------------'
                
                TTR

                puts text

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



