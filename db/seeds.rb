require "open-uri"
Van.destroy_all
User.destroy_all

user = User.create!(email: "john@mail.com", password: "123456", username: "john", profile_text: "testinggggg")

van = Van.new(title: "VW Retro Van",
  description: "This campervan boasts a compact yet functional design, perfect for solo travelers or couples. With a cozy bed, kitchenette, and ample storage, it's ideal for weekend getaways into nature.",
  address: "Brussels, Rue de Saucise 14",
  car_brand: "Volkswagen",
  model: "T3",
  capacity: 4,
  mileage: 70000,
  production_year: "1981",
  fuel_type: "diesel",
  price_per_day: 150,
  user: user)
  file = URI.open("https://sosoir.lesoir.be/sites/default/files/styles/image_1050x460/public/gallery/caleb-george-ivxfoilgyha-unsplash.jpg?itok=1BaJPKhm")
  van.photos.attach(io: file, filename: "VW Retro Van", content_type: "image/png")
  van.save!

van = Van.new(title: "Big Family Motorhome",
  description: "Designed for adventure seekers, this rugged campervan features off-road capabilities and a sturdy build. Equipped with solar panels, a water filtration system, and all-terrain tires, it's ready for remote expeditions.",
  address: "Antwerp, Handelshof 20",
  car_brand: "Fiat",
  model: "Ducato",
  capacity: 8,
  mileage: 90512,
  production_year: "2010",
  fuel_type: "gasoline",
  price_per_day: 195,
  user: user)
  file = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZBD-tz_hg-oyUCEH1MkZ3Ho8u-oJKirNLfA&usqp=CAU")
  van.photos.attach(io: file, filename: "Big Family Motorhome.png", content_type: "image/png")
  van.save!

van = Van.new(title: "Luxurious Camper",
  description: "Spacious and versatile, this campervan is designed to accommodate families with children. Featuring bunk beds, a convertible dinette, and plenty of storage for gear, it's perfect for memorable vacations together.",
  address: "Ghent, Staionssteenweg 250",
  car_brand: "Hymer",
  model: "C5",
  capacity: 6,
  mileage: 115112,
  production_year: "2018",
  fuel_type: "diesel",
  price_per_day: 270,
  user: user)
  file = URI.open("https://www.campervanfinder.com.au/wp-content/uploads/2015/10/expensive1.jpg")
  van.photos.attach(io: file, filename: "Luxurious Camper.png", content_type: "image/png")
  van.save!


Van.new(title: "Eco Camper",
  description: "A sustainable choice for eco-conscious travelers, this campervan is equipped with a composting toilet, energy-efficient appliances, and eco-friendly materials. It offers guilt-free adventures while minimizing environmental impact.",
  address: "Liège",
  car_brand: "Fiat",
  model: "Ducato E",
  capacity: 6,
  mileage: 20564,
  production_year: "2022",
  fuel_type: "electric",
  price_per_day: 250,
  user: user)
  file = URI.open("https://www.francebleu.fr/s3/cruiser-production/2020/07/4fc02efa-e512-4acf-aca8-9399d684d3b7/1200x680_c_elise_fournier.jpg")
  van.photos.attach(io: file, filename: "Luxurious Camper.png", content_type: "image/png")
  van.save!

  puts "Seed done!"
