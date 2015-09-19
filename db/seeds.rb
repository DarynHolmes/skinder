# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Message.create([{ body: 'This is going well' }, 
				{ body: 'I am enjoying the class', username: "Bob" },
				{ body: 'Ruby is a very productive language to be using!', username: "Daryn", email: "DarynHolmes@gmail.com"},
        { body: 'Can I use this user name?', username: "Sue" },
        { body: 'How can I do that?', username: "fake", email: "fake@fake.com" },
        { body: 'Was this asked before?', username: "Sue" },
        { body: 'Ruby is a very productive language to be using!', username: "Daryn", email: "DarynHolmes@gmail.com"},
        { body: 'Can I use this user name?', username: "Mark" },
        { body: 'Ruby a good choice...', username: "Mark", email: "mark@gmail.com"},
        { body: 'Was this home made?', username: "Clair", email: "clair@underwoord" },])