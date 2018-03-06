require 'faker'

# User.create!(first_name: "Taylor", last_name: "Svendsen", password_hash: "password", employee_id: 123456)
#
# Customer.create!(full_name: "Bob Jones", address: "123 Fake St", dl_number: 123456)
#
# Movie.create!(title: "Videodrome", genre: "Horror", format: "VHS", status: true, year: 1985, rental_cost: 3, barcode: 123456)
#
# Rental.create!(user_id: 1, customer_id: 1, movie_id: 1, rental_date: Date.today)

User.destroy_all
Customer.destroy_all
Movie.destroy_all
Rental.destroy_all


10.times do |i|
  User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, password_hash: Faker::Internet.password(8), employee_id: Faker::Number.number(4))
end

50.times do |i|
  Customer.create!(full_name: Faker::Name.name, address: Faker::Address.street_address, dl_number: Faker::Number.number(6))
end

100.times do |i|
  Movie.create!(title: Faker::Lorem.sentence(0, true, 4), genre: "Horror", format: "VHS", status: true, year: 1985, rental_cost: 3, barcode: 123456)
end

Rental.create!(user_id: 1, customer_id: 1, movie_id: 1, rental_date: Date.today)
