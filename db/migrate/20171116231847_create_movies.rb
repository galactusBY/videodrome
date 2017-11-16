class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :genre
      t.string :format
      t.boolean :status
      t.integer :year
      t.integer :rental_cost
      t.integer :barcode

      t.timestamps
    end
  end
end
