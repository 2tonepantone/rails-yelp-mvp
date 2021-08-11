puts 'Cleaning your database..'
Restaurant.destroy_all

puts 'Creating restaurants..'
10.times do
  Restaurant.create!(
    name: Faker::Restaurant.name.to_s,
    address: Faker::Address.street_address,
    category: Restaurant::CATEGORIES.sample
  )
end

# puts 'Adding reviews to restaurants..'
# @restaurants = Restaurant.all
# @restaurants.each do |restaurant|
#   rand(5..10).times do
#     review = Review.create!(
#       content: Faker::Restaurant.review,
#       rating: rand(0..5)
#     )
#     review.restaurant = restaurant
#     review.save
#   end
# end
