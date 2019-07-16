# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

20.times do
  User.create(
    username: Faker::Internet.username,
    email: Faker::Internet.free_email,
    password: Faker::Internet.password
  )
end

6.times do
  Vet.create(
    name: Faker::Name.name,
    location: Faker::Address.community,
    specialty: Faker::Construction.trade,
    rating: Faker::Number.between(1, 5)
  )
end

26.times do
  Review.create(
    content: Faker::Lorem.sentence,
    rating: Faker::Number.between(1, 5),
    vet_id: Faker::Number.between(1, 6)
  )
end

15.times do
  Pet.create(
    name: Faker::Creature::Cat.name,
    species: "Cat",
    age: Faker::Number.between(1, 20),
    vet_id: Faker::Number.between(1, 6),
    user_id: Faker::Number.between(1, 20)
  )
end

12.times do
  Pet.create(
    name: Faker::Creature::Dog.name,
    species: "Dog",
    age: Faker::Number.between(1, 15),
    vet_id: Faker::Number.between(1, 6),
    user_id: Faker::Number.between(1, 20)
  )
end

5.times do
  Pet.create(
    name: Faker::Creature::Horse.name,
    species: "Horse",
    age: Faker::Number.between(1, 10),
    vet_id: Faker::Number.between(1, 6),
    user_id: Faker::Number.between(1, 20)
  )
end
