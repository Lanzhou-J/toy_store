# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# puts "destroying all of the toys records!!"
# Toy.destroy_all
# puts "toys successfully deleted!"

puts "toys seeding"
20.times do
  Toy.create(
    name:Faker::Food.fruits,
    description: Faker::Color.color_name,
    date: Faker::Date.between(from: 5.years.ago, to: Date.today),
    user: Faker::FunnyName.name_with_initial
    )
  end

  puts "20 toys seeded"
  puts "All done"