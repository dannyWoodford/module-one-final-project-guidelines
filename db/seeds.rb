require 'pry'

require 'rest-client'
chr_test = RestClient.get("https://the-one-api.herokuapp.com/v1/character", headers={Authorization: "Bearer WkJGCxRx600w2aPGK5py"})
json = JSON.parse(chr_test)

Character.destroy_all


#ELF CHARACTERS -------------------------------


elf_race= json["docs"].select {|person| person["race"] == "Elf"}
elf_twenty = elf_race.take(20)
elves = elf_twenty.map {|elf| elf["name"]}
elves[0] = "Elrond"
elves[10] = "Denethor"
elves[11] = "Elemmírë"
elves[14] = "Elladan"
elves[2] = "Legolas"
elves[8] = "Galadriel"


elves.map do |name|
    age = rand(900..10000)
    Character.create(name: name, age: age, race: "Elf")
end

#DWARF RACE*******************************************************************

dwarf_race = json["docs"].select {|person| person["race"] == "Dwarf"}
dwarf_twenty = dwarf_race.take(20)
dwarf = dwarf_twenty.map {|dwarf| dwarf["name"]}
dwarf[14] = "Náin"

dwarf.map do |name|
    age = rand(35..250)
    Character.create(name: name, age: age, race: "Dwarf")
end

#Hobbit RACE*******************************************************************
frodo = Character.all.find {|character| character.name == "Frodo Baggins"}


hobbit_race = json["docs"].select {|person| person["race"] == "Hobbit"}
hobbit_twenty = hobbit_race.take(20)
hobbit = hobbit_twenty.map {|hobbit| hobbit["name"]}
hobbit[9] = "Frodo Baggins"
hobbit[10] = "Samwise Gamgee"
hobbit[11] = "Meriadoc Brandybuk"
hobbit[0] = "Peregrin Took"
hobbit[8] = "Bilbo Baggins"

hobbit.map do |name|
    age = rand(20..150)
    Character.find_or_create_by(name: name, age: age, race: "Hobbit")
end

# binding.pry

#Ent RACE*******************************************************************

ent_race = json["docs"].select {|person| person["race"] == "Ent"}
ent_twenty = ent_race.take(20)
ent = ent_twenty.map {|ent| ent["name"]}

ent.map do |name|
    age = 21621
    Character.create(name: name, age: age, race: "Ent")
end


#Men RACE*******************************************************************

men_race = json["docs"].select {|person| person["race"] == "Human"}
men_twenty = men_race.take(20)
men = men_twenty.map {|men| men["name"]}
men[0] = "Aragorn"
men[1] = "Boromoir"
men[3] = "Faramir"

men.map do |name|
    age = rand(20..150)
    Character.create(name: name, age: age, race: "Man")
end

#Orc RACE*******************************************************************

orc_race = json["docs"].select {|person| person["race"] == "Orcs" || person["race"] == "Orc"}
orc_twenty = orc_race.take(20)
orc = orc_twenty.map {|orc| orc["name"]}
orc[5] = "Grom"

orc.map do |name|
    age = rand(20..80)
    Character.create(name: name, age: age, race: "Orc")
end

#Dragon RACE*******************************************************************

dragon_race = json["docs"].select {|person| person["race"] == "Dragon"}
dragon_twenty = dragon_race.take(20)
dragon = dragon_twenty.map {|dragon| dragon["name"]}
dragon[1] = "Smaug"
dragon[2] = "Glaurung"
dragon[3] = "Ancalagon the Black"
dragon[4] = "Scatha"
dragon[5] = "Great Cold-Drake"
dragon[6] = "Gostir"

dragon.map do |name|
    age = rand(2000..10000)
    Character.create(name: name, age: age, race: "Dragon")
end

#Uruk-hai RACE*******************************************************************

uruk_hai_race = json["docs"].select {|person| person["race"] == "Uruk-hai"}
uruk_hai_twenty = uruk_hai_race.take(20)
uruk_hai = uruk_hai_twenty.map {|uruk_hai| uruk_hai["name"]}

uruk_hai.map do |name|
    age = rand(20..150)
    Character.create(name: name, age: age, race: "Uruk-Hai")
end
#Wizard RACE*******************************************************************

wizard_race = json["docs"].select {|person| person["race"] == "Maiar" || person["race"] == "Ainur"}
wizard_twenty = wizard_race.take(20)
wizard = wizard_twenty.map {|wizard| wizard["name"]}
wizard[4] = "Mar"

wizard.map do |name|
    age = rand(1000..10000)
    Character.create(name: name, age: age, race: "Wizard")
end

#END OF RACES ******************************************************************


Ring.destroy_all
r1 = Ring.create(name: "The One Ring", maker: "Sauron", power: "Destroy Middle Earth", alignment: "Evil", location: "Mordor", creation_date: 1432)
r2 = Ring.create(name: "Vilya", maker: "Celebrimor", power: "Healing", alignment: "Good", location: "Rivendell", creation_date: 1081)
r3 = Ring.create(name: "Narya", maker: "Celebrimor", power: "Inspiration", alignment: "Good", location: "Gray Havens", creation_date: 1643)
r4 = Ring.create(name: "First Ring of Men", maker: "Celebrimor and Sauron", power: "Sorcery", alignment: "Evil", location: "Wraith-world", creation_date: 1697)
r5 = Ring.create(name: "Second Ring of Men", maker: "Celebrimor and Sauron", power: "Sorcery", alignment: "Evil", location: "Wraith-world", creation_date: 1697)
r6 = Ring.create(name: "Third Ring of Men", maker: "Celebrimor and Sauron", power: "Sorcery", alignment: "Evil", location: "Wraith-world", creation_date: 1697)
r7 = Ring.create(name: "Fourth Ring of Men", maker: "Celebrimor and Sauron", power: "Sorcery", alignment: "Evil", location: "Wraith-world", creation_date: 1697)
r8 = Ring.create(name: "Fifth Ring of Men", maker: "Celebrimor and Sauron", power: "Sorcery", alignment: "Evil", location: "Wraith-world", creation_date: 1697)
r9 = Ring.create(name: "Sixth Ring of Men", maker: "Celebrimor and Sauron", power: "Sorcery", alignment: "Evil", location: "Wraith-world", creation_date: 1697)
r10 = Ring.create(name: "Seventh Ring of Men", maker: "Celebrimor and Sauron", power: "Sorcery", alignment: "Evil", location: "Wraith-world", creation_date: 1697)
r11= Ring.create(name: "Eigth Ring of Men", maker: "Celebrimor and Sauron", power: "Sorcery", alignment: "Evil", location: "Wraith-world", creation_date: 1697)
r12 = Ring.create(name: "Ninth Ring of Men", maker: "Celebrimor and Sauron", power: "Sorcery", alignment: "Evil", location: "Wraith-world", creation_date: 1697)
r13 = Ring.create(name: "First Ring of Dwarves", maker: "Celebrimor and Sauron", power: "Wealth", alignment: "Good", location: "Lost", creation_date: 1420)
r14 = Ring.create(name: "Second Ring of Dwarves", maker: "Celebrimor and Sauron", power: "Wealth", alignment: "Good", location: "Lost", creation_date: 1420)
r15 = Ring.create(name: "Third Ring of Dwarves", maker: "Celebrimor and Sauron", power: "Wealth", alignment: "Good", location: "Lost", creation_date: 1420)
r16 = Ring.create(name: "Fourth Ring of Dwarves", maker: "Celebrimor and Sauron", power: "Wealth", alignment: "Good", location: "Lost", creation_date: 1420)
r17 = Ring.create(name: "Fifth Ring of Dwarves", maker: "Celebrimor and Sauron", power: "Wealth", alignment: "Good", location: "Lost", creation_date: 1420)
r18 = Ring.create(name: "Sixth Ring of Dwarves", maker: "Celebrimor and Sauron", power: "Wealth", alignment: "Good", location: "Lost", creation_date: 1420)
r19 = Ring.create(name: "Seventh Ring of Dwarves", maker: "Celebrimor and Sauron", power: "Wealth", alignment: "Good", location: "Lost", creation_date: 1420)
r20 = Ring.create(name: "Nenya", maker: "Celebrimor", power: "Protection and Preservation", alignment: "Good", location: "Gray Lothlórien", creation_date: 1343)



character_variables = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]

random_characters = character_variables.map do |variable|
                        i = rand(1...123)
                        variable = Character.all[i]
                        # binding.pry
                    end

frodo = Character.all.find {|character| character.name == "Frodo Baggins"}

# 



RingBearer.destroy_all
RingBearer.create(character_id: frodo.id, ring_id: r1.id)
RingBearer.create(character_id: random_characters[0].id, ring_id: r2.id)
RingBearer.create(character_id: random_characters[1].id, ring_id: r3.id)
RingBearer.create(character_id: random_characters[2].id, ring_id: r4.id)
RingBearer.create(character_id: random_characters[3].id, ring_id: r5.id)
RingBearer.create(character_id: random_characters[4].id, ring_id: r6.id)
RingBearer.create(character_id: random_characters[5].id, ring_id: r7.id)
RingBearer.create(character_id: random_characters[6].id, ring_id: r8.id)
RingBearer.create(character_id: random_characters[7].id, ring_id: r9.id)
RingBearer.create(character_id: random_characters[8].id, ring_id: r10.id)
RingBearer.create(character_id: random_characters[9].id, ring_id: r11.id)
RingBearer.create(character_id: random_characters[10].id, ring_id: r12.id)
RingBearer.create(character_id: random_characters[11].id, ring_id: r13.id)
RingBearer.create(character_id: random_characters[12].id, ring_id: r14.id)
RingBearer.create(character_id: random_characters[13].id, ring_id: r15.id)








