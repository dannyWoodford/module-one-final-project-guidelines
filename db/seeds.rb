Character.create(name: "Frodo Baggins", age: 50, race: "Hobbit")
Character.create(name: "Bilbo Baggins", age: 51, race: "Hobbit")
Character.create(name: "Gollum", age: 589, race: "Hobbit")
Character.create(name: "Gandalf", age: 7034, race: "Wizard")
Character.create(name: "Gala", age: 764, race: "Elf")
Character.create(name: "Groot", age: 5890, race: "Ent")
Character.create(name: "Sam", age: 34, race: "Man")

Ring.create(name: "The One Ring", maker: "Sauron", power: "Control all Rings", alignment: "Evil", location: "Mordor", creation_date: 1432)
Ring.create(name: "Vilya", maker: "Sauron", power: "Healing", alignment: "Good", location: "Rivendell", creation_date: 1781)
Ring.create(name: "Narya", maker: "Sauron", power: "Inspiration", alignment: "Good", location: "Gray Havens", creation_date: 1643)
Ring.create(name: "Ring of Men", maker: "Sauron", power: "Sorcery", alignment: "Evil", location: "Barad-Ur", creation_date: 1697)

RingBearer.create(character_id: 1, ring_id: 1, date_captured: "1940", date_lost: "1949")
