# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
AdminUser.create!(email: 'admin@example.com', password: '123456', password_confirmation: '123456')

User.create(name: 'Lorem', phone: '+663238674', address: Faker::Address.street_address, email: 'lorem@example.com',
  password: '123123', password_confirmation: '123123')

Rest.create(title: 'Baraszek', image: Faker::Avatar.image, description: Faker::Lorem.sentences)
Rest.create(title: Faker::Lorem.word, image: Faker::Avatar.image("my-own-slug"), description: Faker::Lorem.sentences)

Category.create(title: Faker::Lorem.word, rest_id: 1)
Category.create(title: Faker::Lorem.word, rest_id: 1)
Category.create(title: Faker::Lorem.word, rest_id: 1)
Category.create(title: Faker::Lorem.word, rest_id: 2)
Category.create(title: Faker::Lorem.word, rest_id: 2)

Dish.create(title: Faker::Lorem.word, price: Faker::Number.between(100, 1000), description: Faker::Lorem.sentence,
  counter: 0, rest_id: 1, category_id: 1)
Dish.create(title: Faker::Lorem.word, price: Faker::Number.between(100, 1000), description: Faker::Lorem.sentence,
  counter: 0, rest_id: 1, category_id: 1)
Dish.create(title: Faker::Lorem.word, price: Faker::Number.between(100, 1000), description: Faker::Lorem.sentence,
  counter: 0, rest_id: 1, category_id: 1)
Dish.create(title: Faker::Lorem.word, price: Faker::Number.between(100, 1000), description: Faker::Lorem.sentence,
  counter: 0, rest_id: 1, category_id: 2)
Dish.create(title: Faker::Lorem.word, price: Faker::Number.between(100, 1000), description: Faker::Lorem.sentence,
  counter: 0, rest_id: 1, category_id: 2)
Dish.create(title: Faker::Lorem.word, price: Faker::Number.between(100, 1000), description: Faker::Lorem.sentence,
  counter: 0, rest_id: 1, category_id: 3)

Dish.create(title: Faker::Lorem.word, price: Faker::Number.between(100, 1000), description: Faker::Lorem.sentence,
  counter: 0, rest_id: 2, category_id: 4)
Dish.create(title: Faker::Lorem.word, price: Faker::Number.between(100, 1000), description: Faker::Lorem.sentence,
  counter: 0, rest_id: 2, category_id: 4)
Dish.create(title: Faker::Lorem.word, price: Faker::Number.between(100, 1000), description: Faker::Lorem.sentence,
  counter: 0, rest_id: 2, category_id: 5)