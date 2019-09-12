# require 'pry'

# require 'rest-client'
# chr_test = RestClient.get("https://the-one-api.herokuapp.com/v1/character", headers={Authorization: "Bearer WkJGCxRx600w2aPGK5py"})
# json = JSON.parse(chr_test)

# # # ham = json["docs"].select {|person| person["race"] == "Elf"}
# # # new_ham = ham.take(20)
# # # elves = new_ham.map {|elf| elf["name"]}
# # # elves[0] = "Elrond"
# # # elves[10] = "Denethor"
# # # elves[11] = "Elemmírë"
# # # elves[14] = "Elladan"
# # # elves[2] = "Legolas"
# # # elves[8] = "Galadriel"

# # # i=0
# # # char_name = 'c#{i}'

# # # elves.map do |name|
# # #     age = rand(900..10000)
# # #     char_name = Character.create(name: name, age: age, race: "Elf")
# # #     i+=1
# # # end

# # #DWARF RACE*******************************************************************

# # dwarf_race = json["docs"].select {|person| person["race"] == "Dwarf"}
# # dwarf_twenty = dwarf_race.take(20)
# # dwarf = dwarf_twenty.map {|dwarf| dwarf["name"]}
# # dwarf[14] = "Náin"

# # #Hobbit RACE*******************************************************************

# # hobbit_race = json["docs"].select {|person| person["race"] == "Hobbit"}
# # hobbit_twenty = hobbit_race.take(20)
# # hobbit = hobbit_twenty.map {|hobbit| hobbit["name"]}
# # hobbit[10] = "Frodo Baggins"
# # hobbit[11] = "Samwise Gamgee"
# # hobbit[12] = "Meriadoc Brandybuk"
# # hobbit[13] = "Peregrin Took"
# # hobbit[14] = "Bilbo Baggins"

# # #Ent RACE*******************************************************************

# # ent_race = json["docs"].select {|person| person["race"] == "Ent"}
# # ent_twenty = ent_race.take(20)
# # ent = ent_twenty.map {|ent| ent["name"]}

# # #Men RACE*******************************************************************

# # men_race = json["docs"].select {|person| person["race"] == "Human"}
# # men_twenty = men_race.take(20)
# # men = men_twenty.map {|men| men["name"]}
# # men[0] = "Aragorn"
# # men[1] = "Boromoir"
# # men[3] = "Faramir"

# # #Orc RACE*******************************************************************

# # orc_race = json["docs"].select {|person| person["race"] == "Orcs" || person["race"] == "Orc"}
# # orc_twenty = orc_race.take(20)
# # orc = orc_twenty.map {|orc| orc["name"]}
# # orc[5] = "Grom"

# # #Dragon RACE*******************************************************************

# # dragon_race = json["docs"].select {|person| person["race"] == "Dragon"}
# # dragon_twenty = dragon_race.take(20)
# # dragon = dragon_twenty.map {|dragon| dragon["name"]}
# # dragon[1] = "Smaug"
# # dragon[2] = "Glaurung"
# # dragon[3] = "Ancalagon the Black"
# # dragon[4] = "Scatha"
# # dragon[5] = "Great Cold-Drake"
# # dragon[6] = "Gostir"

# # #Uruk-hai RACE*******************************************************************

# # uruk_hai_race = json["docs"].select {|person| person["race"] == "Uruk-hai"}
# # uruk_hai_twenty = uruk_hai_race.take(20)
# # uruk_hai = uruk_hai_twenty.map {|uruk_hai| uruk_hai["name"]}

# # #Wizard RACE*******************************************************************

# # wizard_race = json["docs"].select {|person| person["race"] == "Maiar" || person["race"] == "Ainur"}
# # wizard_twenty = wizard_race.take(20)
# # wizard = wizard_twenty.map {|wizard| wizard["name"]}
# # wizard[4] = "Mar"






# binding.pry