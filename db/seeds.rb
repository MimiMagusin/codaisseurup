# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all

miriam = User.create(email: "miriam@codaisseurbnb.com", password: "1234567")

event = Event.create!(name: "Music Poetry Candlelight Night", description: "Share your accoustic music and poetry", location: "In the building", active:true, user: miriam)
