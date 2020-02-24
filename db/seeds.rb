fruits = Category.create(name: "Fruits")
vegetables = Category.create(name: "Vegetables")
jams = Category.create(name: "Jams")
puts "3 Categories Created..."

fruits.products.create(title: "Apple", price: 1)
fruits.products.create(title: "Banana", price: 2)
fruits.products.create(title: "Pineapple", price: 3)
fruits.products.create(title: "Raspberry", price: 1)
fruits.products.create(title: "Strawberry", price: 1)

vegetables.products.create(title: "Potato", price: 2)
vegetables.products.create(title: "Carrot", price: 1)
vegetables.products.create(title: "Broccoli", price: 2)
vegetables.products.create(title: "Cauliflower", price: 1)

jams.products.create(title: "Strawberry", price: 1)
jams.products.create(title: "Raspberry", price: 1)


puts "11 products created..."


5.times { |n| User.create(email: "user_#{n}@testmail.com") }
puts "5 Users Created..."

5.times { |n| Role.create(name: "role_#{n}") }
puts "5 Roles Created..."