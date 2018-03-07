class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title, null: false
      t.string :genre, null: false
      t.string :format, null: false
      t.boolean :status, null: false
      t.integer :year, null: false
      t.integer :rental_cost, null: false
      t.integer :barcode, null: false

      t.timestamps
    end
  end
end
