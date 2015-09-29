# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create({first_name: "Harry", last_name: "Potter", email: "potter@wizard.com"}) 
User.create({first_name: "Hermione", last_name: "Granger", email: "granger@witch.com"}) 
User.create({first_name: "Ron", last_name: "Weasley", email: "weasley@wizard.com"})

Tip.create({name: "Hogsmeade", description: "The only all-wizarding village in Britain", users_id: 3})