# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Car.destroy_all
Owner.destroy_all

owner1 = Owner.create(nickname: "Bondie")
owner2 = Owner.create(nickname: "yeah_baby")

Car.create(brand: "Astin Martin", model: "DB9", year: "2005", fuel: "petrol", owner: owner1)
Car.create(brand: "Mini Roadster", model: "R59", year: "2013", fuel: "petrol", owner: owner2)
