# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "--- clearing database ---"
Warehouse.destroy_all
Item.destroy_all


puts "--- creating warehouses ---"
Warehouse.create(location: "Munich")
Warehouse.create(location: "London")
Warehouse.create(location: "Berlin")
Warehouse.create(location: "Amsterdam")


puts "--- creating items ---"
20.times do
  i = Item.new
  i.warehouse = Warehouse.all.sample
  i.category = ["Car", "Truck", "Van", "Motorbike"].sample
  i.quantity = rand(1..10)
  i.save
  # p i.errors.full_messages
end
