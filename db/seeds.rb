# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Spaceship.destroy_all
require 'faker'
puts "destroying seeds"
# Review.destroy_all
Review.destroy_all
Spaceship.destroy_all
User.destroy_all
puts "destroyed"
# Booking.destroy_all

user1 = User.create(email: "email@email.com", password: "password")
# user2 = User.create(email: "lamesd@email.com", password: "sapassword")
# user3 = User.create(email: "yosdsa@email.com", password: "saspassword")

armaments = ["miniguns", "lasers", "neutron bombs", "tractor beam", "supernova atomizer 410", "eugogolizer", "trebuchet"]
# planet = ["Mercury", "Venus", "Mars", "Jupiter", "Saturn", "Uranus", "Pluto"]

100.times do
  Spaceship.create(
    name: Faker::Movies::StarWars.vehicle,
    description: Faker::Movies::StarWars.character,
    armaments: armaments.sample,
    # planet: planet.sample,
    price: rand(100_00..100_000_000),
    capacity: rand(5..100_000),
    speed: rand(100..100_000),
    user_id: user1.id
  )
end
puts "done"
# Spaceship.create(
#   name: "ship",
#   description: "good ship",
#   armaments: armaments.sample,
#   planet: planet.sample,
#   price: 20,
#   capacity: 200,
#   speed: 300,
#   rating: 5.5,
#   user_id: user1.id
# )
# Spaceship.create(
#   name: "ship2",
#   description: "good ship",
#   armaments: armaments.sample,
#   planet: planet.sample,
#   price: 20,
#   capacity: 200,
#   speed: 3000,
#   rating: 5.5,
#   user_id: user2.id
# )
# Spaceship.create(
#   name: "ship3",
#   description: "good ship",
#   armaments: armaments.sample,
#   planet: planet.sample,
#   price: 20,
#   capacity: 200,
#   speed: 3000,
#   rating: 5.5,
#   user_id: user3.id
# )

# 10.times do
#   User.create(
#   email: "email@email.com",
#   password: "password"
# )
# end
