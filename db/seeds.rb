# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

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

prices = %w[100 200 300 400 500 600 700 800 900 1000 1100 1200 1300 1400 1500 1600 1700 1800 1900 2000 2100 2200 2300 2400 2500 2600 2700 2800 2900 3000 3100 3200 3300 3400 3500 3600 3700 3800 3900 4000 4100 4200 4300 4400 4500 4600 4700 4800 4900 5000 5100 5200 5300 5400 5500 5600 5700 5800 5900 6000 6100 6200 6300 6400 6500 6600 6700 6800 6900 7000 7100 7200 7300 7400 7500 7600 7700 7800 7900 8000 8100 8200 8300 8400 8500 8600 8700 8800 8900 9000 9100 9200 9300 9400 9500 9600 9700 9800 9900 10000]
capacities = %w[50 100 150 200 250 300 350 400 450 500 550 600 650 700 750 800 850 900 950 1000 1050 1100 1150 1200 1250 1300 1350 1400 1450 1500 1550 1600 1650 1700 1750 1800 1850 1900 1950 2000 2050 2100 2150 2200 2250 2300 2350 2400 2450 2500 2550 2600 2650 2700 2750 2800 2850 2900 2950 3000 3050 3100 3150 3200 3250 3300 3350 3400 3450 3500 3550 3600 3650 3700 3750 3800 3850 3900 3950 4000 4050 4100 4150 4200 4250 4300 4350 4400 4450 4500 4550 4600 4650 4700 4750 4800 4850 4900 4950 5000]
speeds = %w[10 20 30 40 50 60 70 80 90 100 110 120 130 140 150 160 170 180 190 200 210 220 230 240 250 260 270 280 290 300 310 320 330 340 350 360 370 380 390 400 410 420 430 440 450 460 470 480 490 500 510 520 530 540 550 560 570 580 590 600 610 620 630 640 650 660 670 680 690 700 710 720 730 740 750 760 770 780 790 800 810 820 830 840 850 860 870 880 890 900 910 920 930 940 950 960 970 980 990 1000]
rating = %w[1 1.5 2 2.5 3 3.5 4 4.5 5]

deathstar = Spaceship.new(
  name: "The Death Star",
  description: "The Death Star was the Empire's ultimate weapon: a moon-sized space station with the ability to destroy an entire planet.",
  armaments: armaments.sample,
  price: prices.sample,
  capacity: capacities.sample,
  speed: speeds.sample,
  rating: rating.sample,
  user_id: user1.id
)
file = URI.open("https://res.cloudinary.com/dfi8ju7lr/image/upload/v1677680741/AstroPort/124-1240061_death-star-2-png-graphic-death-star-star_tmia1n.png")
    deathstar.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
    deathstar.save!


executor = Spaceship.new(
  name: "Executor",
  description: "The Executor was an Executor-class Star Dreadnought and personal flagship of the Sith Lord Darth Vader.",
  armaments: armaments.sample,
  price: prices.sample,
  capacity: capacities.sample,
  speed: speeds.sample,
  rating: rating.sample,
  user_id: user2.id
)
file = URI.open("https://res.cloudinary.com/dfi8ju7lr/image/upload/v1677680741/AstroPort/Executor_has6kl.png")
    executor.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
    executor.save!

homeone = Spaceship.new(
  name: "Home One",
  description: "The headquarters frigate of the Rebel Alliance fleet, Home One began its existence as a civilian exploration vessel.",
  armaments: armaments.sample,
  price: prices.sample,
  capacity: capacities.sample,
  speed: speeds.sample,
  rating: rating.sample,
  user_id: user3.id
)
file = URI.open("https://res.cloudinary.com/dfi8ju7lr/image/upload/v1677680741/AstroPort/Home_one_gft5lg.png")
    homeone.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
    homeone.save!

landingcraft = Spaceship.new(
  name: "Imperial landing craft",
  description: "A Sentinel-class landing craft, also known as a Sentinel-class shuttle, Sentinel assault shuttle or Imperial landing craft.",
  armaments: armaments.sample,
  price: prices.sample,
  capacity: capacities.sample,
  speed: speeds.sample,
  rating: rating.sample,
  user_id: user4.id
)
file = URI.open("https://res.cloudinary.com/dfi8ju7lr/image/upload/v1677680854/AstroPort/Imperial_landing_craft_nrlkrh.png")
    landingcraft.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
    landingcraft.save!

shuttle = Spaceship.new(
  name: "Imperial shuttle",
  description: "It has three wings: a stationary center foil and two articulated flanking wings.",
  armaments: armaments.sample,
  price: prices.sample,
  capacity: capacities.sample,
  speed: speeds.sample,
  rating: rating.sample,
  user_id: user5.id
)
file = URI.open("https://res.cloudinary.com/dfi8ju7lr/image/upload/v1677674778/AstroPort/shuttle_uow4ox.jpg")
    shuttle.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
    shuttle.save!

spaceshipstar = Spaceship.new(
  name: "Imperial Star Destroyer",
  description: "The wedge-shaped Imperial Star Destroyer is a capital ship bristling with weapons emplacements.",
  armaments: armaments.sample,
  price: prices.sample,
  capacity: capacities.sample,
  speed: speeds.sample,
  rating: rating.sample,
  user_id: user6.id
)
  file = URI.open("https://res.cloudinary.com/dfi8ju7lr/image/upload/v1677680740/AstroPort/Star_Destroyer_beqjvp.webp")
    spaceshipstar.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
    spaceshipstar.save!


falcon = Spaceship.new(
  name: "Millennium Falcon",
  description: "The Millennium Falcon was a YT-1300 light freighter of the YT-1300f variety.",
  armaments: armaments.sample,
  price: prices.sample,
  capacity: capacities.sample,
  speed: speeds.sample,
  rating: rating.sample,
  user_id: user7.id
)
file = URI.open("https://res.cloudinary.com/dfi8ju7lr/image/upload/v1677680741/AstroPort/milleniumfalcon_aedmqy.webp")
    falcon.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
    falcon.save!

frigate = Spaceship.new(
  name: "Rebel Medical Frigate",
  description: "The EF76 Nebulon-B escort frigate, also known as the Nebulon-B frigate, was a class of frigate manufactured by Kuat Drive Yards.",
  armaments: armaments.sample,
  price: prices.sample,
  capacity: capacities.sample,
  speed: speeds.sample,
  rating: rating.sample,
  user_id: user8.id
)
file = URI.open("https://res.cloudinary.com/dfi8ju7lr/image/upload/v1677674945/AstroPort/medfrigate_jaiqpy.jpg")
    frigate.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
    frigate.save!

wing = Spaceship.new(
  name: "X-wing",
  description: "The X-wing is a versatile Rebel Alliance starfighter that balances speed with firepower. Armed with four laser cannons and two proton torpedo launchers.",
  armaments: armaments.sample,
  price: prices.sample,
  capacity: capacities.sample,
  speed: speeds.sample,
  rating: rating.sample,
  user_id: user9.id
)
file = URI.open("https://res.cloudinary.com/dfi8ju7lr/image/upload/v1677680741/AstroPort/X_wing_yzbspt.png")
    wing.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
    wing.save!

tie = Spaceship.new(
  name: "TIE Fighter",
  description: "TIE fighters are depicted as fast, agile, yet fragile starfighters produced by Sienar Fleet Systems lactic Empire.",
  armaments: armaments.sample,
  price: prices.sample,
  capacity: capacities.sample,
  speed: speeds.sample,
  rating: rating.sample,
  user_id: user10.id
)
file = URI.open("https://res.cloudinary.com/dfi8ju7lr/image/upload/v1677680854/AstroPort/Tie_fighter_vbfeys.png")
    tie.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
    tie.save!

yship = Spaceship.new(
  name: "Y-wing",
  description: "The Y-wing is a workhorse starfighter has been in use since the Clone Wars. Used for dogfights and for bombing runs.",
  armaments: armaments.sample,
  price: prices.sample,
  capacity: capacities.sample,
  speed: speeds.sample,
  rating: rating.sample,
  user_id: user11.id
)
file = URI.open("https://res.cloudinary.com/dfi8ju7lr/image/upload/v1677680740/AstroPort/Y_wing_awwehu.webp")
    yship.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
    yship.save!

spaceshipimg = Spaceship.new(
  name: "B-wing",
  description: "Perhaps the oddest-looking starfighter in the Rebel Alliance fleet, the B-wing fighter is as powerful as it is ungainly.",
  armaments: armaments.sample,
  price: prices.sample,
  capacity: capacities.sample,
  speed: speeds.sample,
  rating: rating.sample,
  user_id: user12.id
)
file = URI.open("https://res.cloudinary.com/dfi8ju7lr/image/upload/v1677674661/AstroPort/homeone_tp8t8g.jpg")
    spaceshipimg.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
    spaceshipimg.save!
