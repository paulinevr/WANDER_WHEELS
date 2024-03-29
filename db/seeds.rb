require "open-uri"
Reservation.destroy_all
Van.destroy_all
User.destroy_all

user1 = User.create!(email: "pedro@mail.com", password: "123456", firstname: "pedro", lastname: "pan", profile_text: "testing")
user2 = User.create!(email: "ben@mail.com", password: "123456", firstname: "ben", lastname: "moreau", profile_text: "testing")
user3 = User.create!(email: "gauthier@mail.com", password: "123456", firstname: "gauthier", lastname: "lepour", profile_text: "testing")
user4 = User.create!(email: "pauline@mail.com", password: "123456", firstname: "pauline", lastname: "van rijckevorsel", profile_text: "testing")
user5 = User.create!(email: "john@mail.com", password: "123456", firstname: "john", lastname: "elst", profile_text: "testing")

van = Van.new(title: "Camping-car de Christophe",
  description: "This campervan boasts a compact yet functional design, perfect for solo travelers or couples. With a cozy bed, kitchenette, and ample storage, it's ideal for weekend getaways into nature.",
  address: "Brussels, Rue de Saint-Bernard 14",
  car_brand: "Fiat",
  model: "Bürstner It 664",
  capacity: 4,
  mileage: 70000,
  production_year: "2010",
  fuel_type: "diesel",
  price_per_day: 77,
  user: user1)
  file = URI.open("https://yescapa.twic.pics/rental/picture/2a512b33-72db-40a8-9cd0-27e48ae0ee0f?twic=v1/max=630")
  van.photos.attach(io: file, filename: "VW Retro Van 1", content_type: "image/png")
  file = URI.open("https://yescapa.twic.pics/rental/picture/32faa06c-5807-4959-911a-d92b7b3386ee_1676529733?twic=v1/max=630")
  van.photos.attach(io: file, filename: "VW Retro Van 2", content_type: "image/png")
  file = URI.open("https://yescapa.twic.pics/rental/picture/0e03b918-da71-45e7-8f7c-650b9b90c7aa?twic=v1/max=630")
  van.photos.attach(io: file, filename: "VW Retro Van 2", content_type: "image/png")
  van.save!

van = Van.new(title: "Camping-car de Capucine ",
  description: "With a spacious, modern and comfortable interior, you'll be able to cover long distances without stopping.",
  address: "Namur, rue de Fer 4",
  car_brand: "Ford",
  model: "Chausson Flash 03",
  capacity: 6,
  mileage: 90512,
  production_year: "2005",
  fuel_type: "diesel",
  price_per_day: 68,
  user: user2)
  file = URI.open("https://yescapa.twic.pics/rental/picture/38882dd9-16d5-4278-b5ea-115e19932678_1684665653?twic=v1/max=630")
  van.photos.attach(io: file, filename: "Big Family Motorhome 1", content_type: "image/png")
  file = URI.open("https://yescapa.twic.pics/rental/picture/f313304b-f43b-498f-be5e-52de7d1d95f8_1684665724?twic=v1/max=630")
  van.photos.attach(io: file, filename: "Big Family Motorhome 2", content_type: "image/png")
  file = URI.open("https://yescapa.twic.pics/rental/picture/9e8fa509-6a34-463d-b428-386a060d4e40_1685254762?twic=v1/max=630")
  van.photos.attach(io: file, filename: "Big Family Motorhome 2", content_type: "image/png")
  van.save!

van = Van.new(title: "Thibaud Van",
  description: "Vintage Volkswagen van with an all-purpose size, ideal for road and urban use to discover new horizons.",
  address: "Ghent, Staionssteenweg 250",
  car_brand: "Volkswagen",
  model: "Westfalia Campmobile",
  capacity: 4,
  mileage: 115112,
  production_year: "1973",
  fuel_type: "gasoline",
  price_per_day: 99,
  user: user3)
  file = URI.open("https://yescapa.twic.pics/rental/picture/81784d4a-809b-475f-a919-bf50885d060f_1661849026?twic=v1/max=630")
  van.photos.attach(io: file, filename: "Luxurious Camper 1", content_type: "image/png")
  file = URI.open("https://yescapa.twic.pics/rental/picture/afbd9b66-a06b-4663-bcac-71e765a8a3f7_1648558599?twic=v1/max=630")
  van.photos.attach(io: file, filename: "Luxurious Camper 2", content_type: "image/png")
  file = URI.open("https://yescapa.twic.pics/rental/picture/e0e6e673-313f-411c-96c7-fa9ea747e727_1648558697?twic=v1/max=630")
  van.photos.attach(io: file, filename: "Luxurious Camper 2", content_type: "image/png")
  van.save!

van = Van.new(title: "4X4 de Tom",
  description: "It's made for getting off the beaten track and going where vans and camper vans can't: incredible spots and freedom.",
  address: "Liège, place de la Cathédrale 14",
  car_brand: "Susuki",
  model: "Jimny full black",
  capacity: 2,
  mileage: 20564,
  production_year: "2021",
  fuel_type: "electric",
  price_per_day: 120,
  user: user4)
  file = URI.open("https://yescapa.twic.pics/rental/picture/e285730e-8e05-4f08-9f6c-cb88385a9d44_1697099210?twic=v1/max=630")
  van.photos.attach(io: file, filename: "Luxurious Camper 1", content_type: "image/png")
  file = URI.open("https://yescapa.twic.pics/rental/picture/f57dfc68-b3e9-4fe0-a82c-2f5772a923c8_1697101827?twic=v1/max=630")
  van.photos.attach(io: file, filename: "Luxurious Camper 2", content_type: "image/png")
  file = URI.open("https://yescapa.twic.pics/rental/picture/e0e70c72-c1b6-469f-a8b2-311b155ae010_1697100609?twic=v1/max=630")
  van.photos.attach(io: file, filename: "Luxurious Camper 2", content_type: "image/png")
  van.save!

van = Van.new(title: "Van de Victorien",
  description: "This mythical 70s combi will take you back in time. You'll enjoy the beautiful roads of France at its own pace, and you won't go unnoticed with its orange color.",
  address: "Dinant, rue En Rhée 37",
  car_brand: "VW",
  model: "Westfalia Westfalia",
  capacity: 3,
  mileage: 10560,
  production_year: "1977",
  fuel_type: "gasoline",
  price_per_day: 120,
  user: user4)
  file = URI.open("https://yescapa.twic.pics/rental/picture/93854626-a3bb-40b6-890a-b3caaabab340_1704566346?twic=v1/max=580")
  van.photos.attach(io: file, filename: "Luxurious Camper 1", content_type: "image/png")
  file = URI.open("https://yescapa.twic.pics/rental/picture/b0ebd715-c88f-4a63-b989-0a22428d770e_1705353163?twic=v1/max=580")
  van.photos.attach(io: file, filename: "Luxurious Camper 2", content_type: "image/png")
  file = URI.open("https://yescapa.twic.pics/rental/picture/025f1e65-8792-4ae2-85ae-982f55289458_1705353360?twic=v1/max=970")
  van.photos.attach(io: file, filename: "Luxurious Camper 2", content_type: "image/png")
  van.save!

van = Van.new(title: "Caravane de Julien",
  description: "This retro-style mini-caravan attaches to your vehicle with a towing hook, and gives you the freedom to sleep in the great outdoors, with just the essentials and the Class!",
  address: "Houffalize,  Rue de la Copette 38",
  car_brand: "VW",
  model: "Caravane",
  capacity: 2,
  mileage: 41164,
  production_year: "1977",
  fuel_type: "gasoline",
  price_per_day: 120,
  user: user4)
  file = URI.open("https://yescapa.twic.pics/rental/picture/f390d45d-f256-412b-beb2-55441df2dd7e_1675093861?twic=v1/max=970")
  van.photos.attach(io: file, filename: "Luxurious Camper 1", content_type: "image/png")
  file = URI.open("https://yescapa.twic.pics/rental/picture/1c3cb3ad-cf41-40a1-a1ba-38acde3e4710_1675101773?twic=v1/max=970")
  van.photos.attach(io: file, filename: "Luxurious Camper 2", content_type: "image/png")
  file = URI.open("https://yescapa.twic.pics/rental/picture/c5e504f0-b7d3-413c-852f-208b419d3ecb_1675412384?twic=v1/max=970")
  van.photos.attach(io: file, filename: "Luxurious Camper 2", content_type: "image/png")
  van.save!

  puts "Seed done!"
