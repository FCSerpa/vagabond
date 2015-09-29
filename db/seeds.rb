require "ffaker"

User.delete_all
Tip.delete_all
Place.delete_all

sf = Place.create(name: "San Francisco", latitude: 1.23, longitude: 3.14, picture: "URL")

95.times do ||
  User.create(first_name: FFaker::Name::first_name, last_name: FFaker::Name::last_name, email: FFaker::Internet::email, password: "password", place_id: sf.id)
end

1000.times do ||
  Tip.create(name: FFaker::Name::name, description: FFaker::HipsterIpsum::paragraph, user_id: rand(1..95), place_id: sf.id)
end



