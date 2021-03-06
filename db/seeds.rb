# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
10.times do
  Unit.create(name: Faker::Job.unique.title)
end

10.times do
  Restaurant.create(name: Faker::Restaurant.unique.name)
end

200.times do
  Employee.create(name: Faker::Name.name, unit_id: Unit.order(Arel.sql('RANDOM()')).first.id)
end