require 'ffaker'

User.delete_all
Tip.delete_all
Place.delete_all

sf = Place.create(name: "San Francisco", latitude: 1.23, longitude: 3.14, picture: "URL")

London = Place.create(name: "London", latitude: 51.5072, longitude: 0.1275, picture: "URL")

Gibraltar = Place.create(name: "Gibraltar", latitude: 36.1430, longitude: 5.3530, picture: "URL")

95.times do ||
  User.create(first_name: FFaker::Name::first_name, last_name: FFaker::Name::last_name, email: FFaker::Internet::email, password: "password", place_id: rand(1..7))
end

1000.times do ||
  Tip.create(name: Faker::Lorem.sentence, description: FFaker::HipsterIpsum::paragraph, user_id: rand(1..95), place_id: rand(1..7))
end