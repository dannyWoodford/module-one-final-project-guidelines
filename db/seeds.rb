require 'pry'


Character.destroy_all
c1 = Character.create(name: "Frodo Baggins", age: 50, race: "Hobbit")
c2 = Character.create(name: "Bilbo Baggins", age: 51, race: "Hobbit")
c3 = Character.create(name: "Gollum", age: 589, race: "Hobbit")
c4 = Character.create(name: "Gandalf", age: 7034, race: "Wizard")
c5 = Character.create(name: "Galadriel", age: 764, race: "Elf")
c6 = Character.create(name: "Treebeard", age: 5890, race: "Ent")
c7 = Character.create(name: "Aragorn", age: 77, race: "Man")

Ring.destroy_all
r1 = Ring.create(name: "The One Ring", maker: "Sauron", power: "Control all Rings", alignment: "Evil", location: "Mordor", creation_date: 1432)
r2 = Ring.create(name: "Vilya", maker: "Sauron", power: "Healing", alignment: "Good", location: "Rivendell", creation_date: 1781)
r3 = Ring.create(name: "Narya", maker: "Sauron", power: "Inspiration", alignment: "Good", location: "Gray Havens", creation_date: 1643)
r4 = Ring.create(name: "Ring of Men", maker: "Sauron", power: "Sorcery", alignment: "Evil", location: "Lost", creation_date: 1697)

RingBearer.destroy_all
RingBearer.create(character_id: c1.id, ring_id: r1.id, date_captured: "1940", date_lost: "1949")
RingBearer.create(character_id: c2.id, ring_id: r2.id, date_captured: "190", date_lost: "1200")
RingBearer.create(character_id: c2.id, ring_id: r2.id, date_captured: "940", date_lost: "2019")
RingBearer.create(character_id: c4.id, ring_id: r3.id, date_captured: "140", date_lost: "19")

