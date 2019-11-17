# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

image = Image.new(url: "https://media.tacdn.com/media/attractions-splice-spp-674x446/07/7a/8e/5d.jpg", product_id: 1)
image.save

image = Image.new(url: "https://images.unsplash.com/photo-1508094902356-db488e227d75?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2100&q=80", product_id: 1)
image.save