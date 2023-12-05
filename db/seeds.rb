# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

user1 = User.find(1)
car1 = Car.create(
    user:user1, model: "Honda", description: "A nice car to buy",
    finance_fee: 10, purchase_fee: 20, amount_payable: 50,
    duration: "4 Months", apr: "5.8%",
    photo: "https://www.drivespark.com/images/2023-06/honda-elevate_168604685850.jpg"
    )
