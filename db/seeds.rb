# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "start seeding"

User.destroy_all if Rails.env.development?
Event.destroy_all if Rails.env.development?

puts "creating users with photos"

nath = User.create!(
  email: "nath@gmail.com",
  password: "123123",
  first_name: "Nath",
  last_name: "Zheng",
  admin: true,
  photo: open('https://res.cloudinary.com/dxouryvao/image/upload/v1566268733/nath_q0kaa1.png')
)

test = User.create!(
  email: "test@gmail.com",
  password: "123123",
  first_name: "test",
  last_name: "123",
  admin: false
  # photo: open("https://res.cloudinary.com/dxouryvao/image/upload/v1566268919/51040522_mxitwx.jpg")
)

puts 'Create Events'

event_1 = Event.create!(
  name: 'Nakameguro Cherry Blossom Festival',
  description: 'The home of the most famous cherry blossom spot in Tokyo, Nakameguro canal is a blossom wonderland in spring.',
  date: 'March 23, 2020 - April 10, 2020',
  location: '2-2 Nakameguro, Meguro-ku, Tokyo',
  genre: 'Nature',
  photo: open(''),
  user: nath
)

event_2 = Event.create!(
  name: 'Chidorigafuchi Cherry Blossom Festival',
  description: 'The home of the most famous cherry blossom spot in Tokyo, Nakameguro canal is a blossom wonderland in spring.',
  date: 'March 23, 2020 - April 10, 2020',
  location: '2 Chome Kudanminami, Chiyoda City, Tokyo',
  genre: 'Nature',
  photo: open(''),
  user: nath
)

event_3 = Event.create!(
  name: 'Old Nakagawa Riverbed Kawazu Cherry Blossom',
  description: 'The home of the most famous cherry blossom spot in Tokyo, Nakameguro canal is a blossom wonderland in spring.',
  date: 'March 23, 2020 - April 10, 2020',
  location: '3 Chome-1-1 Hirai, Edogawa City, Tokyo',
  genre: 'Nature',
  photo: open(''),
  user: nath
)
