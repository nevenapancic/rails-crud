# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database"
Restaurant.destroy_all
puts "Generate simple data..."
Restaurant.create!(
name: "De pits",
rating: 4,
address: "Dam 3"
)
Restaurant.create!(
  name: "Pizza",
  rating: 2,
  address: "Dam 89"
)

# rails db:seed we run in rails console rails c

# rails g controller restaurants
