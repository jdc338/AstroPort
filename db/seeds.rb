# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Spaceship.destroy_all
require 'faker'
require "open-uri"

puts "destroying seeds"
# Review.destroy_all
Review.destroy_all
Booking.destroy_all
Spaceship.destroy_all
User.destroy_all
puts "destroyed"

# user1 = User.create(email: "email@email.com", password: "password")
# user2 = User.create(email: "lamesd@email.com", password: "sapassword")
# user3 = User.create(email: "yosdsa@email.com", password: "saspassword")

armaments = ["miniguns", "lasers", "neutron bombs", "tractor beam", "supernova atomizer 410", "eugogolizer", "trebuchet"]
# planet = ["Mercury", "Venus", "Mars", "Jupiter", "Saturn", "Uranus", "Pluto"]

# 100.times do
#   Spaceship.create(
#     name: Faker::Movies::StarWars.vehicle,
#     description: Faker::Movies::StarWars.character,
#     armaments: armaments.sample,
#     # planet: planet.sample,
#     price: rand(100_00..100_000_000),
#     capacity: rand(5..100_000),
#     speed: rand(100..100_000),
#     user_id: user1.id
#   )

user1 = User.create(
  email: "email1@email.com",
  password: "password1"
)

user2 = User.create(
  email: "email2@email.com",
  password: "password2"
)

user3 = User.create(
  email: "email3@email.com",
  password: "password3"
)

user4 = User.create(
  email: "email4@email.com",
  password: "password4"
)

user5 = User.create(
  email: "email5@email.com",
  password: "password5"
)

user6 = User.create(
  email: "email6@email.com",
  password: "password6"
)

user7 = User.create(
  email: "email7@email.com",
  password: "password7"
)

user8 = User.create(
  email: "email8@email.com",
  password: "password8"
)

user9 = User.create(
  email: "email9@email.com",
  password: "password9"
)

user10 = User.create(
  email: "email10@email.com",
  password: "password10"
)

user11 = User.create(
  email: "email11@email.com",
  password: "password11"
)

user12 = User.create(
  email: "email12@email.com",
  password: "password12"
)

deathstar = Spaceship.new(
  name: "Death Star",
  description: "The Death Star was the Empire's ultimate weapon: a moon-sized space station with the ability to destroy an entire planet.",
  armaments: armaments.sample,
  price: 20,
  capacity: 200,
  speed: 300,
  rating: 5.5,
  user_id: user1.id
)
file = URI.open("https://res.cloudinary.com/dfi8ju7lr/image/upload/v1677680741/AstroPort/124-1240061_death-star-2-png-graphic-death-star-star_tmia1n.png")
    deathstar.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
    deathstar.save!


executor = Spaceship.new(
  name: "Executor",
  description: "The Executor was an Executor-class Star Dreadnought and personal flagship of the Sith Lord Darth Vader.",
  armaments: armaments.sample,
  price: 20,
  capacity: 200,
  speed: 3000,
  rating: 5.5,
  user_id: user2.id
)
file = URI.open("https://res.cloudinary.com/dfi8ju7lr/image/upload/v1677680741/AstroPort/Executor_has6kl.png")
    executor.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
    executor.save!

homeone = Spaceship.new(
  name: "Home One",
  description: "The headquarters frigate of the Rebel Alliance fleet, Home One began its existence as a civilian exploration vessel.",
  armaments: armaments.sample,
  price: 20,
  capacity: 200,
  speed: 3000,
  rating: 5.5,
  user_id: user3.id
)
file = URI.open("https://res.cloudinary.com/dfi8ju7lr/image/upload/v1677680741/AstroPort/Home_one_gft5lg.png")
    homeone.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
    homeone.save!

landingcraft = Spaceship.new(
  name: "Imperial landing craft",
  description: "A Sentinel-class landing craft, also known as a Sentinel-class shuttle, Sentinel assault shuttle or Imperial landing craft.",
  armaments: armaments.sample,
  price: 20,
  capacity: 200,
  speed: 3000,
  rating: 5.5,
  user_id: user4.id
)
file = URI.open("https://res.cloudinary.com/dfi8ju7lr/image/upload/v1677680854/AstroPort/Imperial_landing_craft_nrlkrh.png")
    landingcraft.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
    landingcraft.save!

shuttle = Spaceship.new(
  name: "Imperial shuttle",
  description: "It has three wings: a stationary center foil and two articulated flanking wings.",
  armaments: armaments.sample,
  price: 20,
  capacity: 200,
  speed: 3000,
  rating: 5.5,
  user_id: user5.id
)
file = URI.open("https://res.cloudinary.com/dfi8ju7lr/image/upload/v1677674778/AstroPort/shuttle_uow4ox.jpg")
    shuttle.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
    shuttle.save!

spaceshipstar = Spaceship.new(
  name: "Imperial Star Destroyer",
  description: "The wedge-shaped Imperial Star Destroyer is a capital ship bristling with weapons emplacements.",
  armaments: armaments.sample,
  price: 20,
  capacity: 200,
  speed: 3000,
  rating: 5.5,
  user_id: user6.id
)
  file = URI.open("https://res.cloudinary.com/dfi8ju7lr/image/upload/v1677680740/AstroPort/Star_Destroyer_beqjvp.webp")
    spaceshipstar.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
    spaceshipstar.save!


falcon = Spaceship.new(
  name: "Millennium Falcon",
  description: "The Millennium Falcon was a YT-1300 light freighter of the YT-1300f variety.",
  armaments: armaments.sample,
  price: 20,
  capacity: 200,
  speed: 3000,
  rating: 5.5,
  user_id: user7.id
)
file = URI.open("https://res.cloudinary.com/dfi8ju7lr/image/upload/v1677680741/AstroPort/milleniumfalcon_aedmqy.webp")
    falcon.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
    falcon.save!

frigate = Spaceship.new(
  name: "Rebel Medical Frigate",
  description: "The EF76 Nebulon-B escort frigate, also known as the Nebulon-B frigate, was a class of frigate manufactured by Kuat Drive Yards.",
  armaments: armaments.sample,
  price: 20,
  capacity: 200,
  speed: 3000,
  rating: 5.5,
  user_id: user8.id
)
file = URI.open("https://res.cloudinary.com/dfi8ju7lr/image/upload/v1677674945/AstroPort/medfrigate_jaiqpy.jpg")
    frigate.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
    frigate.save!

wing = Spaceship.new(
  name: "X-wing",
  description: "The X-wing is a versatile Rebel Alliance starfighter that balances speed with firepower. Armed with four laser cannons and two proton torpedo launchers.",
  armaments: armaments.sample,
  price: 20,
  capacity: 200,
  speed: 3000,
  rating: 5.5,
  user_id: user9.id
)
file = URI.open("https://res.cloudinary.com/dfi8ju7lr/image/upload/v1677680741/AstroPort/X_wing_yzbspt.png")
    wing.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
    wing.save!

tie = Spaceship.new(
  name: "TIE Fighter",
  description: "TIE fighters are depicted as fast, agile, yet fragile starfighters produced by Sienar Fleet Systems lactic Empire.",
  armaments: armaments.sample,
  price: 20,
  capacity: 200,
  speed: 3000,
  rating: 5.5,
  user_id: user10.id
)
file = URI.open("https://res.cloudinary.com/dfi8ju7lr/image/upload/v1677680854/AstroPort/Tie_fighter_vbfeys.png")
    tie.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
    tie.save!

yship = Spaceship.new(
  name: "Y-wing",
  description: "The Y-wing is a workhorse starfighter has been in use since the Clone Wars. Used for dogfights and for bombing runs.",
  armaments: armaments.sample,
  price: 20,
  capacity: 200,
  speed: 3000,
  rating: 5.5,
  user_id: user11.id
)
file = URI.open("https://res.cloudinary.com/dfi8ju7lr/image/upload/v1677680740/AstroPort/Y_wing_awwehu.webp")
    yship.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
    yship.save!

spaceshipimg = Spaceship.new(
  name: "B-wing",
  description: "Perhaps the oddest-looking starfighter in the Rebel Alliance fleet, the B-wing fighter is as powerful as it is ungainly.",
  armaments: armaments.sample,
  price: 20,
  capacity: 200,
  speed: 3000,
  rating: 5.5,
  user_id: user12.id
)
file = URI.open("https://res.cloudinary.com/dfi8ju7lr/image/upload/v1677674661/AstroPort/homeone_tp8t8g.jpg")
    spaceshipimg.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
    spaceshipimg.save!
