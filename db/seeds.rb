# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: "admin@yopmail.com", password: "admin", is_admin: true)
User.create(email: "customer@yopmail.com", password: "customer", is_admin: false)

Region.create(title: 'san fransico', country: 'USA', currency: 'USD', tax: 10)
Region.create(title: 'delhi', country: 'India', currency: 'INR', tax: 5)
Order.create(customer_name: 'john', shipping_address: 'san jose', order_total: 100, paid_at: DateTime.now)
Region.first.products.create(title: 'Tshirs', description: 'red color t-shirt', image_url: '/default.png', price: 100, sku: 'tshirt-100', quantity: 100, order_id: Order.first.id)
Region.last.products.create(title: 'pants', description: 'blue color pants', image_url: '/default-pants.png', price: 1000, sku: 'pants-1000', quantity: 200, order_id: Order.first.id)
