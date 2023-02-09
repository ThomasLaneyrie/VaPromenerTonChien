# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all

50.times do |index|
  # City.create(
  #   city_name:Faker::Address.city, 
  #   zip_code:Faker::Number.number(digits: 5)
  # ) 

  Dog.create(
    name:Faker::Games::Overwatch.hero,
    city:City.find(rand(City.first.id..City.last.id))
   )

   Dogsitter.create(
    first_name: Faker::Name.first_name, 
    last_name: Faker::Name.last_name,
    city:City.find(rand(City.first.id..City.last.id))
   )

   Stroll.create(
    dog: Dog.find(rand(Dog.first.id..Dog.last.id)),
    dogsitter: Dogsitter.find(rand(Dogsitter.first.id..Dogsitter.last.id)),
   )
end
puts "Tables cities, dogs, dogsitters et strolls seedées !"