# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
product1 = Product.create(name: "pencil", price: 2.99, image_url: "", description: "this product can write and erase")
product2 = Product.create(name: "whiteboard", price: 20.99, image_url: "", description: "this product can be drawn on with eraseable marker")
product3 = Product.create(name: "car", price: 29000, image_url: "", description: "this product can get you from place to place")
