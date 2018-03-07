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

genres = ["Horror", "Comedy", "Action", "Adventure", "Romance", "Thriller", "Drama", "Animation", "Science Fiction", "Documentary", "Musical", "Independent", "Fantasy", "Foreign", "Crime"]

formats = ["VHS", "DVD", "Blu-ray"]

years = *(1965..2018)

user_ary = []
customer_ary = []
movie_ary = []

10.times do
  user_ary << User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, password_hash: Faker::Internet.password(8), employee_id: Faker::Number.number(4))

end

50.times do
   customer_ary << Customer.create!(full_name: Faker::Name.name, address: Faker::Address.street_address, dl_number: Faker::Number.number(6))
end

100.times do
  movie_ary << Movie.create!(title: Faker::Lorem.sentence(0, true, 4), genre: genres.sample, format: formats.sample, status: true, year: years.sample, rental_cost: 3, barcode: 0001)
end

Rental.create!(user_id: user_ary.sample, customer_id: customer_ary.sample, movie_id: movie_ary.sample, rental_date: Date.today)
