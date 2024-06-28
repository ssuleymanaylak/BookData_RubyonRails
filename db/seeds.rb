# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

2_000.times do |i|
    Book.create!( title: Faker::Book.title, 
      author: Faker::Book.author, 
      publisher: Faker::Book.publisher,
      category: Faker::Book.genre,
      isbn: "#{Faker::Number.number(digits: 3)}-#{Faker::Number.number(digits: 1)}-#{Faker::Number.number(digits: 2)}-#{Faker::Number.number(digits: 6)}-#{Faker::Number.number(digits: 1)}",
      dewey_decimal_number: "#{Faker::Number.number(digits: 3)}.#{Faker::Number.number(digits: 3)}",
      binding: Faker::Number.between(from: 0, to: 1))
    print '.' if i % 100 == 0
  end