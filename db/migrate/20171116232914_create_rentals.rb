class CreateRentals < ActiveRecord::Migration[5.1]
  def change
    create_table :rentals do |t|
      t.integer :user_id
      t.integer :customer_id
      t.integer :movie_id
      t.date :rental_date

      t.timestamps
    end
  end
end
