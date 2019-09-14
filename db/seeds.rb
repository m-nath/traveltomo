# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "start seeding"

puts "creating users with photos"

nath = User.create!(
  email: "nath@gmail.com",
  password: "123123",
  first_name: "Nath",
  last_name: "Zheng",
  admin: true,
  photo: open("https://res.cloudinary.com/dxouryvao/image/upload/v1566268733/nath_q0kaa1.png")
)

test = User.create!(
  email: "test@gmail.com",
  password: "123123",
  first_name: "test",
  last_name: "123",
  admin: false,
  photo: open("https://res.cloudinary.com/dxouryvao/image/upload/v1566268919/51040522_mxitwx.jpg"
              )

  puts 'Create Events'

  event_1 = Event.create!(
    name: 'Meguro Cherry Blossom Festival'
    description: 'One of the most popular cherry blossom in Tokyo.......'
    date:
    location: 'Meguro Canal'

  )
