# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

5000.times do 
  Product.create({
    name: Faker::Lorem.word,
    brand: Faker::Lorem.word,
    model: Faker::Lorem.characters(number: 10),
    ram: Faker::Number.between(from: 1, to: 10),
    external_storage: Faker::Number.between(from: 16, to: 250)
  })
end