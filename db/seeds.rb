# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Item.destroy_all
Department.destroy_all

3.times do 
    d = Department.create(name: Faker::Coffee.blend_name, body: Faker::Coffee.notes)
    3.times do 
      d.items.create(name: Faker::Beer.brand , body: Faker::Dessert.flavor)
    end 
end
#puts "seeded #{Department.length}"



