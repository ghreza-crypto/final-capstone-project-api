# frozen_string_literal: true

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

user1 = User.create(username: 'user1', email: 'user1@example.com', password: 'password')
admin1 = User.create(username: 'admin', email: 'admin@gmail.com ', password: 'password', role: 'admin')

car1 = Car.create(
   user: user1,
   model: 'BWM',
   description: 'You cant afford to miss this!',
   finance_fee: 10,
   purchase_fee: 20,
   amount_payable: 50,
   duration: '4 Months',
   apr: '5.8%',
   photo: 'https://stimg.cardekho.com/images/carexteriorimages/930x620/BMW/X7/10571/1689673096346/front-left-side-47.jpg?imwidth=890&impolicy=resize'
   )

Reservation.create(user: user1, car: car1, date: "1st January 2021", city: "kano")
