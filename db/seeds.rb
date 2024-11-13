# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

restaurants = [
  { name: "Le Gourmet", address: "123 Rue de Paris, Paris", phone_number: "01 23 45 67 89", category: "french" },
  { name: "Sushi World", address: "456 Tokyo St, Tokyo", phone_number: "+81 3-1234-5678", category: "japanese" },
  { name: "Pasta Paradise", address: "789 Roma Ave, Rome", phone_number: "+39 06 123 4567", category: "italian" },
  { name: "Dragon Palace", address: "321 Beijing Rd, Beijing", phone_number: "+86 10 8765 4321", category: "chinese" },
  { name: "Brussels Delight", address: "555 Grand Place, Brussels", phone_number: "+32 2 123 45 67", category: "belgian" }
]

restaurants.each do |restaurant|
  Restaurant.create!(restaurant)
end

puts "Finished!"
