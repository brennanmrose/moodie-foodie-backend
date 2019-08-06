# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'Mali', password: 'password', mood: nil)
DietaryRestriction.create(vegetarian: false, vegan: false, gluten_free: false, soy_free: false, peanut_free: false, user_id: 1)
Food.create(name: 'test food', description: 'test food description', user_id: 1)
Drink.create(name: 'test drink', description: 'test drink description', user_id: 1)
Dessert.create(name: 'test dessert', description: 'test dessert description', user_id: 1)