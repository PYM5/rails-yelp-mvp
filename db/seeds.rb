# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Restaurant.create(name: "Restaurant 1", address: "1 rue de lille", category:"chinese")
Restaurant.create(name: "Restaurant 2", address: "2 rue de lille", category:"italian")
Restaurant.create(name: "Restaurant 3", address: "3 rue de lille", category:"japanese")
Restaurant.create(name: "Restaurant 4", address: "4 rue de lille", category:"french")
Restaurant.create(name: "Restaurant 5", address: "5 rue de lille", category:"belgian")
