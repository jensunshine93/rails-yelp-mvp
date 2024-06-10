# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# db/seeds.rb

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
restaurants = [
  { name: "La Tour d'Argent", address: "15 Quai de la Tournelle, 75005 Paris, France", category: "french" },
  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ, UK", category: "italian" },
  { name: "Shin Sushi", address: "8180 Beverly Blvd, Los Angeles, CA 90048, USA", category: "japanese" },
  { name: "Wok To Walk", address: "32 Rue de Rivoli, 75004 Paris, France", category: "chinese" },
  { name: "Le Pain Quotidien", address: "142 Rue Montmartre, 75002 Paris, France", category: "belgian" }
]

restaurants.each do |restaurant|
  Restaurant.create!(restaurant)
end

puts "Finished!"
