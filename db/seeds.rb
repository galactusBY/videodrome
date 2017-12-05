User.create!(first_name: "Taylor", last_name: "Svendsen", password_hash: "password", employee_id: 123456)

Customer.create!(full_name: "Bob Jones", address: "123 Fake St", dl_number: 123456)

Movie.create!(title: "Videodrome", genre: "Horror", format: "VHS", status: true, year: 1985, rental_cost: 3, barcode: 123456)

Rental.create!(user_id: 1, customer_id: 1, movie_id: 1, rental_date: Date.today)
