# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u1 = User.create email:"test@example.com", password:"password"
joe = u1.restaurants.create name:"Joe's Bar and Grill"
joe.menu_items.create [
  {name:"Cardiac Fries", price:5.95, description:"EMT standing by"},
  {name:"Onion Blossom", price:6.95, description:"Oven baked to bring out the sweetness"},
  ]


u2 = User.create email:"admin@example.com", password:"password"
paco = u2.restaurants.create name:"Paco's Tacos"
paco.menu_items.create [
  {name:"Chicken Taco", price:4.95, description:"Grilled chicken fajita on homemade tortillas with secret salsa"},
  {name:"Pork Taco", price:4.95, description:"Crispy and tender carnitas on homemade tortillas with secret salsa"},
  ]

