admin = User.create!(first_name: "Taylor", last_name: "Svendsen", password_hash: "password", employee_id: 123456 )

customer = Customer.create!(full_name: "Bob Jones", address: "123 Fake St", dl_number: 123456)

movie = Movie.create!(title: "Videodrome", genre: "Horror", format: "VHS", status: true, year: 1985, rental_cost: 3, barcode: 123456)

rental = Rental.create!(user_id: admin.id, customer_id: customer.id, movie_id: movie.id, rental_date: 2017-01-01)
