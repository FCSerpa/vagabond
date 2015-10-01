require 'ffaker'

User.delete_all
Tip.delete_all
Place.delete_all


sf = Place.create(name: "San Francisco", latitude: 37.7833, longitude: -122.416, picture: "URL")

london = Place.create(name: "London", latitude: 51.5072, longitude: -0.1275, picture: "URL")

gibraltar = Place.create(name: "Gibraltar", latitude: 36.1430, longitude: 5.3530, picture: "URL")

newYork = Place.create(name: "New York", latitude: 40.712, longitude: -74.005, picture: "URL")

belgium = Place.create(name: "Belgium", latitude: 50.850, longitude: 4.3500, picture: "URL")

nepal = Place.create(name: "Nepal", latitude: 26.5333, longitude: 86.733, picture:"URL")

machupichu = Place.create(name:"Machu pichu", latitude: -13.1633, longitude: -72.54, picture: "URL")

95.times do ||
  User.create(first_name: FFaker::Name::first_name, last_name: FFaker::Name::last_name, email: FFaker::Internet::email, password: "password", place_id: rand(1..7))
end

1000.times do ||
  Tip.create(name: Faker::Lorem.sentence, description: FFaker::HipsterIpsum::paragraph, user_id: rand(1..95), place_id: rand(1..7))
end