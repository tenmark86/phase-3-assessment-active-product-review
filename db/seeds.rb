# This will delete any existing rows from the Product and User tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting old data..."
Product.destroy_all
User.destroy_all

puts "Creating users..."
user1 = User.create(name: "Mark")
user2 = User.create(name: "Ann")
user3 = User.create(name: "Cate")

puts "Creating products..."
product1 = Product.create(name: "Stapler", price: 10)
product2 = Product.create(name: "Whiteboard", price: 15)
product3 = Product.create(name: "Dry Erase Markers", price: 5)
product4 = Product.create(name: "Ballpoint Pens", price: 2)
product5 = Product.create(name: "Scotch Tape", price: 3)

puts "Creating reviews..."
Review.create(star_rating: 5, comment: "Great", product_id: product1.id, user_id: user1.id)
Review.create(star_rating: 5, comment: "Fantastic", product_id: product3.id, user_id: user1.id)
Review.create(star_rating: 3, comment: "Meh", product_id: product1.id, user_id: user2.id)
Review.create(star_rating: 1, comment: "Bad", product_id: product2.id, user_id: user2.id)
Review.create(star_rating: 1, comment: "The worst", product_id: product3.id, user_id: user2.id)

puts "Seeding done!"