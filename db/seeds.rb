# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

food_types = ['Curry', 'Dessert', 'Sides', 'Breakfast']
food_types.each{ |t| FoodType.where(:name => t ).create }

food_preferences = ['Vegetarian','Vegan','Meat','Dairy', 'Gluten Free']
food_preferences.each{ |t| FoodPreference.where(name: t).create}

cuisines = ['Italian','Mexican','Indian','Chinese', 'Nigerian']
cuisines.each{ |t| Cuisine.where(name: t).create}
