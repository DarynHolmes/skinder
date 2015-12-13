# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: "admin", email: "", password: "admin*2015")

tiy_event = Event.create(name: "TIY", code: "tiy", image_url: "http://theironyard.com/images/home/tiy-logo.png")
meetup_event = Event.create(name: "Agile Practitioners", code: "meetup")
other_event = Event.create(name: "Other", code: "other")

Message.create(event: tiy_event, body: 'I am enjoying the class', username: "Bob")
Message.create(event: tiy_event, body: 'Ruby is a very productive language to be using!', username: "Daryn", email: "DarynHolmes@gmail.com")
Message.create(event: tiy_event, body: 'Can I use this user name?', username: "Sue")
Message.create(event: tiy_event, body: 'How can I do that?', username: "fake", email: "fake@fake.com")
Message.create(event: tiy_event, body: 'Was this asked before?', username: "Sue")
Message.create(event: tiy_event, body: 'Ruby is a very productive language to be using!', username: "Daryn", email: "DarynHolmes@gmail.com")

Message.create(event: meetup_event, body: 'Can I use this user name?', username: "Mark")
