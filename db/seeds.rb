require "ffaker"

User.delete_all
Tip.delete_all

95.times do ||
  User.create(first_name: FFaker::Name::first_name, last_name: FFaker::Name::last_name, email: FFaker::Internet::email, password: "password" )
end


1000.times do ||
  Tip.create(name: FFaker::Name::name, description: FFaker::HipsterIpsum::paragraph, users_id: rand(1..95))
end