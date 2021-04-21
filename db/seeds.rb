# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# AdminUser.create!(email: 'logalamo@gmail.com', password: 'Password01', password_confirmation: 'Password01') if Rails.env.development?

# Type.create(type_name: 'Joke')
# Customer.create(username: 'CandleLover', password: 'CandleLover', full_name: "Laura Breen", email: "LBreen@gmail.com", address: "203 Salter St.")

# 23.times do
#   candle = Candle.create(
#     scent: Faker::FunnyName.unique.name,
#     colour: Faker::Color.color_name,
#     size: "#{Faker::Number.number(digits: 3)} grams",
#     price: Faker::Number.number(digits: 2),
#     type: Type.find_by(type_name: "Mystery")
#   )

#   unless candle.valid?
#     candle.errors.messages.each do | column, errors |
#       errors.each do |error|
#         puts "Error #{column} #{error}"
#       end
#     end
#   end
# end

# 24.times do
#   candle = Candle.create(
#     scent: Faker::Dessert.unique.topping,
#     colour: Faker::Color.color_name,
#     size: "#{Faker::Number.number(digits: 3)} grams",
#     price: Faker::Number.number(digits: 2),
#     type: Type.find_by(type_name: "Pleasant")
#   )

#   unless candle.valid?
#     candle.errors.messages.each do | column, errors |
#       errors.each do |error|
#         puts "Error #{column} #{error}"
#       end
#     end
#   end
# end

# 24.times do
#   candle = Candle.create(
#     scent: Faker::Science.unique.element,
#     colour: Faker::Color.color_name,
#     size: "#{Faker::Number.number(digits: 3)} grams",
#     price: Faker::Number.number(digits: 2),
#     type: Type.find_by(type_name: "Prank")
#   )

#   unless candle.valid?
#     candle.errors.messages.each do | column, errors |
#       errors.each do |error|
#         puts "Error #{column} #{error}"
#       end
#     end
#   end
# end

24.times do
  candle = Candle.create(
    scent: Faker::Hipster.unique.word,
    colour: Faker::Color.color_name,
    size: "#{Faker::Number.number(digits: 3)} grams",
    price: Faker::Number.number(digits: 2),
    type: Type.find_by(type_name: "Joke")
  )

  unless candle.valid?
    candle.errors.messages.each do | column, errors |
      errors.each do |error|
        puts "Error #{column} #{error}"
      end
    end
  end
end