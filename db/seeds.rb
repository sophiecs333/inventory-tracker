# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


4.times do
  w = Warehouse.new
  w.location = ["Munich", "London", "Berlin", "Amsterdam"].sample
  w.save
  p w.errors.full_messages
end



8.times do
  i = Item.new
  i.warehouse = Warehouse.location.sample
  i.category = Item::CATEGORY.sample
  i.quantity = rand(1..10)
  i.save
  p i.errors.full_messages
end
