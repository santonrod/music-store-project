# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


5.times do
  check = Faker::Internet.password(8)
  user = User.new(name: Faker::Name.name, email: Faker::Internet.email, password: check, password_confirmation: check)
  user.save!

  3.times do
    instrument = Instrument.create(user_id: user.id, category: Faker::Music.instrument, brand: Faker::StarWars.vehicle, year: Faker::Number.between(1960, 2015), details: Faker::Hipster.sentence(5), price: Faker::Number.between(50, 5000))
  end
end
