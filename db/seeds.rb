# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Restaurant.destroy_all

30.times do
  category = ["chinese", "italian", "japanese", "french", "belgian"].sample
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    category:,
    phone_number: Faker::PhoneNumber.phone_number_with_country_code
  )

  5.times do
    rating = (0..5).to_a.sample
    Review.create!(
      content: Faker::Restaurant.review,
      rating:,
      restaurant:
    )
  end

  puts "Restaurant #{restaurant.id} & 5 Review created"
end
