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
  date: 'March 23 - April 10',
  location: '2-2 Nakameguro, Meguro-ku, Tokyo',
  genre: 'Riverside',
  tag_list: ['sakura', 'spring', 'canal'],
  photo: open('https://res.cloudinary.com/dxouryvao/image/upload/v1568596666/Traveltomo/DSC06721-min_bznb8x.jpg'),
  user: nath
)

event_2 = Event.create!(
  name: 'Chidorigafuchi Cherry Blossom Festival',
  description: 'The home of the most famous cherry blossom spot in Tokyo, Nakameguro canal is a blossom wonderland in spring.',
  date: 'Late March - Early April',
  location: '2 Chome Kudanminami, Chiyoda City, Tokyo',
  genre: 'Riverside',
  tag_list: ['sakura', 'spring', 'moat'],
  photo: open('https://res.cloudinary.com/dxouryvao/image/upload/v1568596663/Traveltomo/DSC06687-min_numazj.jpg'),
  user: nath
)

event_3 = Event.create!(
  name: 'Old Nakagawa Riverbed Kawazu Cherry Blossom',
  description: 'The home of the most famous cherry blossom spot in Tokyo, Nakameguro canal is a blossom wonderland in spring.',
  date: 'Late February - Mid March',
  location: '3 Chome-1-1 Hirai, Edogawa City, Tokyo',
  genre: 'Riverside',
  tag_list: ['sakura', 'spring', 'kawazu'],
  photo: open('https://res.cloudinary.com/dxouryvao/image/upload/v1568596653/Traveltomo/DSC04616-min_z8bjuc.jpg'),
  user: nath
)

event_4 = Event.create!(
  name: 'Shingashi Riverbed Cherry Blossom',
  description: 'The home of the most famous cherry blossom spot in Tokyo, Nakameguro canal is a blossom wonderland in spring.',
  date: 'Late March - Early April',
  location: '108 Hikawacho, Kawagoe, Saitama',
  genre: 'Riverside',
  tag_list: ['sakura', 'spring'],
  photo: open('https://res.cloudinary.com/dxouryvao/image/upload/v1568596657/Traveltomo/DSC05434-min_dxbtzh.jpg'),
  user: nath
)

event_5 = Event.create!(
  name: 'Shioiri Park Cherry Blossom',
  description: 'The home of the most famous cherry blossom spot in Tokyo, Nakameguro canal is a blossom wonderland in spring.',
  date: 'March 23 - April 10',
  location: '108 Hikawacho, Kawagoe, Saitama',
  genre: 'Park',
  tag_list: ['sakura', 'spring', 'kawazu'],
  photo: open('https://res.cloudinary.com/dxouryvao/image/upload/v1568596660/Traveltomo/DSC06286-min_by88oz.jpg'),
  user: nath
)

event_6 = Event.create!(
  name: 'Mejiro Garden Autumn Colors',
  description: 'The home of the most famous cherry blossom spot in Tokyo, Nakameguro canal is a blossom wonderland in spring.',
  date: 'Mid-late November',
  location: '3 Chome-20-18 Mejiro, Toshima City, Tokyo',
  genre: 'Park',
  tag_list: ['fall foliage', 'Japanese garden'],
  photo: open('https://res.cloudinary.com/dxouryvao/image/upload/v1568596657/Traveltomo/DSC02156-min_hlsshi.jpg'),
  user: nath
)

event_7 = Event.create!(
  name: 'Nakatsu Valley Autumn Colors',
  description: 'The home of the most famous cherry blossom spot in Tokyo, Nakameguro canal is a blossom wonderland in spring.',
  date: 'October - November',
  location: 'Nakatsugawa, Chichibu, Saitama',
  genre: 'Nature',
  tag_list: ['fall foliage', 'gorge'],
  photo: open('https://res.cloudinary.com/dxouryvao/image/upload/v1568596669/Traveltomo/IMG_2563-min_wwf9hk.jpg'),
  user: nath
)

event_8 = Event.create!(
  name: 'Saijoji Temple Autumn Colors',
  description: 'The home of the most famous cherry blossom spot in Tokyo, Nakameguro canal is a blossom wonderland in spring.',
  date: 'Mid-Late November',
  location: '1157 Daiyucho, Minamiashigara, Kanagawa',
  genre: 'Temple',
  tag_list: ['fall foliage', 'temple'],
  photo: open('https://res.cloudinary.com/dxouryvao/image/upload/v1568596649/Traveltomo/452B00BA-C9B2-43FB-A129-993987DF712B-min_igh4gs.jpg'),
  user: nath
)

event_9 = Event.create!(
  name: 'Koishikawa Gorakuen Park Autumn Colors',
  description: 'The home of the most famous cherry blossom spot in Tokyo, Nakameguro canal is a blossom wonderland in spring.',
  date: 'Late November - Early December',
  location: '1 Chome-6-6 Koraku, Bunkyo City, Tokyo',
  genre: 'Park',
  tag_list: ['fall foliage', 'Japanese garden'],
  photo: open('https://res.cloudinary.com/dxouryvao/image/upload/v1568596682/Traveltomo/IMG_3554-min_d7c47t.jpg'),
  user: nath
)

event_10 = Event.create!(
  name: 'Eikando Temple Autumn Colors',
  description: 'The home of the most famous cherry blossom spot in Tokyo, Nakameguro canal is a blossom wonderland in spring.',
  date: 'Mid-Late November',
  location: '48 Eikandocho, Sakyo Ward, Kyoto',
  genre: 'Temple',
  tag_list: ['fall foliage', 'temple'],
  photo: open('https://res.cloudinary.com/dxouryvao/image/upload/v1568596687/Traveltomo/ORG_DSC01790-min_l7pmxt.jpg'),
  user: nath
)
