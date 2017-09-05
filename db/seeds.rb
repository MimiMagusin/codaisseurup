# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all
User.destroy_all

music = Category.create(name: "Music")
food = Category.create(name: "Food")
together = Category.create(name: "Together")
competition = Category.create(name: "Competition")


miriam = User.create(email: "miriam@codaisseurbnb.com", password: "1234567")
wouter = User.create(email: "wouter@codaisseurbnb.com", password: "1234567")
diana = User.create(email: "diana@codaisseurbnb.com", password: "1234567")

Event.create!(name: "Music Poetry Candlelight Night", description: "Share your accoustic music and poetry", location: "In the building", active:true, user: miriam )
Event.create!(name: "OpenMic", description: "Share your talents", location: "In the building", active:true, user: miriam)
Event.create!(name: "Bake off", description: "Share your cooking talents", location: "In the building", active:true, user: wouter)
Event.create!(name: "Pot Luck", description: "Share your foods", location: "In the building", active:true, user: diana)
