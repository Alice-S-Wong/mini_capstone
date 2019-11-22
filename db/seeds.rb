# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

category_product = CategoryProduct.find(1)
category_product.category_id = 3
category_product.save!

category_product = CategoryProduct.find(2)
category_product.category_id = 1
category_product.save

category_product = CategoryProduct.find(3)
category_product.category_id = 3
category_product.save

category_product = CategoryProduct.find(4)
category_product.category_id = 1
category_product.save

category_product = CategoryProduct.find(5)
category_product.category_id = 3
category_product.save

category_product = CategoryProduct.find(6)
category_product.category_id = 1
category_product.save

category_product = CategoryProduct.find(7)
category_product.category_id = 3
category_product.save

category_product = CategoryProduct.find(8)
category_product.category_id = 2
category_product.save

category_product = CategoryProduct.find(9)
category_product.category_id = 2
category_product.save