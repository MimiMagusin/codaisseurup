# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Event.destroy_all
Profile.destroy_all
Photo.destroy_all
Category.destroy_all

#category
music = Category.create(name: "Music")
food = Category.create(name: "Food")
together = Category.create(name: "Together")
competition = Category.create(name: "Competition")

#users
miriam = User.create(email: "miriam@codaisseurbnb.com", password: "1234567")
wouter = User.create(email: "wouter@codaisseurbnb.com", password: "1234567")
diana = User.create(email: "diana@codaisseurbnb.com", password: "1234567")

#Events
event_1 = Event.create!(name: "Music Poetry Candlelight Night", description: "Share your accoustic music and poetry", location: "In the building", starts_at: "2017-9-5 15:00:00", ends_at: "2017-9-5 15:00:00", active:true, user: miriam, categories: [music, together])
event_2 = Event.create!(name: "OpenMic", description: "Share your talents", location: "In the building", starts_at: "2017-9-5 15:00:00", ends_at: "2017-9-5 15:00:00", active: true, user: miriam)
event_3 = Event.create!(name: "Bake off", description: "Share your cooking talents", location: "In the building", starts_at: "2017-9-5 15:00:00", ends_at: "2017-9-5 15:00:00", active: true, user: wouter)
event_4 = Event.create!(name: "Pot Luck", description: "Share your foods", location: "In the building", starts_at: "2017-9-5 15:00:00", ends_at: "2017-9-5 15:00:00", active: true, user: diana)

#Photos
photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dwgyjfcoy/image/upload/v1504786178/mpcn_xxteow.jpg", event: event_1)
photo2 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dwgyjfcoy/image/upload/v1504786178/candle_o9brzb.jpg", event: event_1)
photo3 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dwgyjfcoy/image/upload/v1504786178/food_ibrk6i.jpg", event: event_3)
photo4 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dwgyjfcoy/image/upload/v1504786178/together_v6rmur.jpg", event: event_4)
photo5 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dwgyjfcoy/image/upload/v1504772724/sample.jpg", event: event_1)
