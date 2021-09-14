#Model
    #Migration
        #Test it
#Route / Controller
#Method
    #Test it

require 'faker'

puts "🌱 Seeding data..."

# Users
u1 = User.create(name: 'Dorian', username: "FoodLuver21", password: "lovefood")
u2 = User.create(name: 'Carter', username: "Gulper9000", password: "gulpgulp" )
u3 = User.create(name: 'Howard', username: "MukbangStar", password: "asmrcrunch" )

# Restaurants
r1 = Restaurant.create(
    name: 'McDonald\'s', 
    category: 'Fast Food', 
    description: 'American fast-food chain for burgers and fries.', 
    price: '💲')
r2 = Restaurant.create(
    name: 'Fogo de Chão', 
    category: 'Brazilian Steakhouse', 
    description: 'Fogo de Chão is a full-service Brazilian steakhouse or churrascaria, serving rodízio style, notable for its roving waiters who serve barbecued meats from large skewers directly onto the seated diner\'s plates.', 
    price: '💲💲💲')
r3 = Restaurant.create(
    name: 'BCD Tofu House', 
    category: 'Korean', 
    description: 'Casual Korean restaurant chain serving classic fare such as soft tofu soup, bibimbap & bulgogi.', 
    price: '💲💲')
r4 = Restaurant.create(
    name: 'Mangia', 
    category: 'Italian', 
    description: 'Self-serve takeout spot offering gourmet Mediterranean sandwiches, salads, pastas & more.', 
    price: '💲💲')
r5 = Restaurant.create(
    name: 'Big Gay Ice Cream Shop', 
    category: 'Ice Cream', 
    description: 'Hip, convivial ice cream parlor with multiple outposts serving innovative soft-serve concoctions.', 
    price: '💲💲')

# Reviews
re = Review.create(rating: 2, comment: 'It is what it is 🤷‍♂️', user_id: u2.id, restaurant_id: r1.id)
re = Review.create(rating: 5, comment: 'So delicious! Perfect for any carnivore~', user_id: u1.id, restaurant_id: r2.id)
re = Review.create(rating: 4, comment: 'Great soft-serve, will come back.', user_id: u1.id, restaurant_id: r5.id)
re = Review.create(rating: 3, comment: 'Delicious, wish it had more options', user_id: u3.id, restaurant_id: r5.id)
re = Review.create(rating: 4, comment: 'Great Korean food!', user_id: u3.id, restaurant_id: r3.id)

puts "✅ Done seeding!"
