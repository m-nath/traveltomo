# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "deleting previous seed"
Interest.destroy_all if Rails.env.development?
EventPlan.destroy_all if Rails.env.development?
Event.destroy_all if Rails.env.development?
User.destroy_all if Rails.env.development?

puts "start seeding"

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
  access:  '1-min walk from Nakameguro Station',
  genre: 'Riverside',
  tag_list: ['sakura', 'spring', 'canal'],
  photo: open('https://res.cloudinary.com/dxouryvao/image/upload/v1568596666/Traveltomo/DSC06721-min_bznb8x.jpg'),
  gallery1: open('https://res.cloudinary.com/dxouryvao/image/upload/v1570102676/Traveltomo/DSC05209_ovsthm.jpg'),
  gallery2: open('https://res.cloudinary.com/dxouryvao/image/upload/v1570101191/Traveltomo/DSC06717_cib8ei.jpg'),
  gallery3: open('https://res.cloudinary.com/dxouryvao/image/upload/v1570101296/Traveltomo/DSC06732_zljo3d.jpg'),
  user: nath
)

event_2 = Event.create!(
  name: 'Chidorigafuchi Cherry Blossom Festival',
  description: 'The home of the most famous cherry blossom spot in Tokyo, Nakameguro canal is a blossom wonderland in spring.',
  date: 'Late March - Early April',
  location: '2 Chome Kudanminami, Chiyoda City, Tokyo',
  access: '5-min walk from Kudanshita Station',
  genre: 'Riverside',
  tag_list: ['sakura', 'spring', 'moat'],
  photo: open('https://res.cloudinary.com/dxouryvao/image/upload/v1568596663/Traveltomo/DSC06687-min_numazj.jpg'),
  gallery1: open('https://res.cloudinary.com/dxouryvao/image/upload/v1570101743/Traveltomo/DSC06691_vpbkki.jpg'),
  gallery2: open('https://res.cloudinary.com/dxouryvao/image/upload/v1570101742/Traveltomo/DSC06679_ratsep.jpg'),
  gallery3: open('https://res.cloudinary.com/dxouryvao/image/upload/v1570101748/Traveltomo/DSC06684_houlwd.jpg'),
  user: nath
)

event_3 = Event.create!(
  name: 'Old Nakagawa Riverbed Kawazu Cherry Blossom',
  description: 'The home of the most famous cherry blossom spot in Tokyo, Nakameguro canal is a blossom wonderland in spring.',
  date: 'Late February - Mid March',
  location: '3 Chome-1-1 Hirai, Edogawa City, Tokyo',
  access: '15~20-min walk from Kameido Suijin Station or Hirai Station. Or Higashi Sumida 1-chome Bus Stop',
  genre: 'Riverside',
  tag_list: ['sakura', 'spring', 'kawazu'],
  photo: open('https://res.cloudinary.com/dxouryvao/image/upload/v1568596653/Traveltomo/DSC04616-min_z8bjuc.jpg'),
  gallery1: open('https://res.cloudinary.com/dxouryvao/image/upload/v1570102154/Traveltomo/DSC04625_dbsaib.jpg'),
  gallery2: open('https://res.cloudinary.com/dxouryvao/image/upload/v1570102149/Traveltomo/DSC04628_y9fwtr.jpg'),
  gallery3: open('https://res.cloudinary.com/dxouryvao/image/upload/v1570102145/Traveltomo/DSC04592_pnkmbr.jpg'),
  user: nath
)

event_4 = Event.create!(
  name: 'Shingashi Riverbed Cherry Blossom',
  description: 'The home of the most famous cherry blossom spot in Tokyo, Nakameguro canal is a blossom wonderland in spring.',
  date: 'Late March - Early April',
  location: '108 Hikawacho, Kawagoe, Saitama',
  access: '24-min walk from Hon-Kawagoe Station, 28-min walk from Kawagoe-shi Station // 2-min walk from Eigawa Shrine-mae or Miyashita-machi Bus Stop, 5-min walk from Kitamachi Bus Stop',
  genre: 'Riverside',
  tag_list: ['sakura', 'spring'],
  photo: open('https://res.cloudinary.com/dxouryvao/image/upload/v1568596657/Traveltomo/DSC05434-min_dxbtzh.jpg'),
  gallery1: open('https://res.cloudinary.com/dxouryvao/image/upload/v1570102830/Traveltomo/IMG_3535_dpua8o.jpg'),
  gallery2: open('https://res.cloudinary.com/dxouryvao/image/upload/v1570102678/Traveltomo/DSC05429_mrqxxx.jpg'),
  gallery3: open('https://res.cloudinary.com/dxouryvao/image/upload/v1570102801/Traveltomo/DSC05534_e93ysh.jpg'),
  user: nath
)

event_5 = Event.create!(
  name: 'Shioiri Park Cherry Blossom',
  description: 'The home of the most famous cherry blossom spot in Tokyo, Nakameguro canal is a blossom wonderland in spring.',
  date: 'March 23 - April 10',
  location: '108 Hikawacho, Kawagoe, Saitama',
  access: '12-min walk from Minami-Senju Station',
  genre: 'Park',
  tag_list: ['sakura', 'spring', 'kawazu'],
  photo: open('https://res.cloudinary.com/dxouryvao/image/upload/v1568596660/Traveltomo/DSC06286-min_by88oz.jpg'),
  gallery1: open('https://res.cloudinary.com/dxouryvao/image/upload/v1570103372/Traveltomo/DSC06248_jvt7ki.jpg'),
  gallery2: open('https://res.cloudinary.com/dxouryvao/image/upload/v1570103378/Traveltomo/DSC06484_simqa3.jpg'),
  gallery3: open('https://res.cloudinary.com/dxouryvao/image/upload/v1570103372/Traveltomo/DSC06330_x9cb5g.jpg'),
  user: nath
)

event_6 = Event.create!(
  name: 'Mejiro Garden Autumn Colors',
  description: 'The home of the most famous cherry blossom spot in Tokyo, Nakameguro canal is a blossom wonderland in spring.',
  date: 'Mid-late November',
  location: '3 Chome-20-18 Mejiro, Toshima City, Tokyo',
  access: '5-min walk from Mejiro Station',
  genre: 'Park',
  tag_list: ['fall foliage', 'Japanese garden'],
  photo: open('https://res.cloudinary.com/dxouryvao/image/upload/v1568596657/Traveltomo/DSC02156-min_hlsshi.jpg'),
  gallery1: open('https://res.cloudinary.com/dxouryvao/image/upload/v1570103628/Traveltomo/DSC02164_mphmsn.jpg'),
  gallery2: open('https://res.cloudinary.com/dxouryvao/image/upload/v1570103625/Traveltomo/DSC02259_kjnyfm.jpg'),
  gallery3: open('https://res.cloudinary.com/dxouryvao/image/upload/v1570103626/Traveltomo/DSC02350_qvvnwy.jpg'),
  user: nath
)

event_7 = Event.create!(
  name: 'Nakatsu Valley Autumn Colors',
  description: 'The home of the most famous cherry blossom spot in Tokyo, Nakameguro canal is a blossom wonderland in spring.',
  date: 'October - November',
  location: 'Nakatsugawa, Chichibu, Saitama',
  access: 'Take Seibu Bus from Mitsumine-guchi Station and get off at Nakasori (中双里) Bus Stop',
  genre: 'Nature',
  tag_list: ['fall foliage', 'gorge'],
  photo: open('https://res.cloudinary.com/dxouryvao/image/upload/v1568596669/Traveltomo/IMG_2563-min_wwf9hk.jpg'),
  gallery1: open('https://res.cloudinary.com/dxouryvao/image/upload/v1570103718/Traveltomo/IMG_2768_pwlpor.jpg'),
  gallery2: open('https://res.cloudinary.com/dxouryvao/image/upload/v1570103720/Traveltomo/IMG_2662_ac8w0k.jpg'),
  gallery3: open('https://res.cloudinary.com/dxouryvao/image/upload/v1570103718/Traveltomo/IMG_2767_ezl6y2.jpg'),
  user: nath
)

event_8 = Event.create!(
  name: 'Saijoji Temple Autumn Colors',
  description: 'The home of the most famous cherry blossom spot in Tokyo, Nakameguro canal is a blossom wonderland in spring.',
  date: 'Mid-Late November',
  location: '1157 Daiyucho, Minamiashigara, Kanagawa',
  access: 'From Daiyusan Station take Izu Hakone Bus and get off at Doryoson Bus Stop',
  genre: 'Temple',
  tag_list: ['fall foliage', 'temple'],
  photo: open('https://res.cloudinary.com/dxouryvao/image/upload/v1568596649/Traveltomo/452B00BA-C9B2-43FB-A129-993987DF712B-min_igh4gs.jpg'),
  gallery1: open('https://res.cloudinary.com/dxouryvao/image/upload/v1570104007/Traveltomo/IMG_3525_emllvi.jpg'),
  gallery2: open('https://res.cloudinary.com/dxouryvao/image/upload/v1570104006/Traveltomo/2BFF357E-8890-478D-BFD4-06045EF77EB3_vm4aut.jpg'),
  gallery3: open('https://res.cloudinary.com/dxouryvao/image/upload/v1570104007/Traveltomo/3AEB7F6C-6EE8-439D-AC07-15C6FA3BE47F_vjz1zj.jpg'),
  user: nath
)

event_9 = Event.create!(
  name: 'Koishikawa Gorakuen Park Autumn Colors',
  description: 'The home of the most famous cherry blossom spot in Tokyo, Nakameguro canal is a blossom wonderland in spring.',
  date: 'Late November - Early December',
  location: '1 Chome-6-6 Koraku, Bunkyo City, Tokyo',
  access: "2-min walk from Toei Oedo Line Iidabashi Station's or 8-min walk from other Iidabashi Station",
  genre: 'Park',
  tag_list: ['fall foliage', 'Japanese garden'],
  photo: open('https://res.cloudinary.com/dxouryvao/image/upload/v1568596682/Traveltomo/IMG_3554-min_d7c47t.jpg'),
  gallery1: open('https://res.cloudinary.com/dxouryvao/image/upload/v1570104178/Traveltomo/IMG_3720_atgk0k.jpg'),
  gallery2: open('https://res.cloudinary.com/dxouryvao/image/upload/v1570104178/Traveltomo/IMG_3466_wrpdy2.jpg'),
  gallery3: open('https://res.cloudinary.com/dxouryvao/image/upload/v1570104178/Traveltomo/BCA26C92-900F-4336-8172-D8C662BC7120_v1ewmd.jpg'),
  user: nath
)

event_10 = Event.create!(
  name: 'Eikando Temple Autumn Colors',
  description: 'The home of the most famous cherry blossom spot in Tokyo, Nakameguro canal is a blossom wonderland in spring.',
  date: 'Mid-Late November',
  location: '48 Eikandocho, Sakyo Ward, Kyoto',
  access: 'From JR Kyoto or Keihan Sanjo Station, get off at Nanzenji Eikando-do Bus Stop and walk for 3-min',
  genre: 'Temple',
  tag_list: ['fall foliage', 'temple'],
  photo: open('https://res.cloudinary.com/dxouryvao/image/upload/v1568596687/Traveltomo/ORG_DSC01790-min_l7pmxt.jpg'),
  gallery1: open('https://res.cloudinary.com/dxouryvao/image/upload/v1570104349/Traveltomo/ORG_DSC01802_ep3atn.jpg'),
  gallery2: open('https://res.cloudinary.com/dxouryvao/image/upload/v1570104350/Traveltomo/IMG_2719_fu2cwc.heic'),
  gallery3: open('https://res.cloudinary.com/dxouryvao/image/upload/v1570104346/Traveltomo/IMG_2710_knujyk.jpg'),
  user: nath
)
