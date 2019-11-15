# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

product = Product.find_by(id: 2)
product.supplier_id = 3
product.save

product = Product.find_by(id: 3)
product.supplier_id = 3
product.save

product = Product.find_by(id: 4)
product.supplier_id = 2
product.save

product = Product.find_by(id: 5)
product.supplier_id = 1
product.save

product = Product.find_by(id: 6)
product.supplier_id = 1
product.save

product = Product.find_by(id: 7)
product.supplier_id = 3
product.save

product = Product.find_by(id: 10)
product.supplier_id = 2
product.save