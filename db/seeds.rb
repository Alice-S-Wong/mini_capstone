# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

product = Product.new(name: "Pirate Ship", price: 1000, image_url: "none", description: "A ship once used by pirates. For all your swashbuckling adventures.")
product.save

product = Product.new(name: "Dragon Egg", price: 900, image_url: "none", description: "An egg guaranteed to hatch into a pet dragon.")
product.save

product = Product.new(name: "Pandora's Box", price: 50, image_url: "none", description: "A box said to contain all the evils in the world. And hope. So there's that. It's cheap.")
product.save

product = Product.new(name: "Killer Robot", price: 1200, image_url: "none", description: "A robot that intends to destroy humanity. Use with caution.")
product.save

product = Product.new(name: "Balloon", price: 5, image_url: "none", description: "It's just an ordinary balloon. Nothing special here. It's cheap.")
product.save