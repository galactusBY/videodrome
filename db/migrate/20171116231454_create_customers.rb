class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :full_name, null: false
      t.string :address, null: false
      t.integer :dl_number, null: false
      t.integer :overdue_fee

      t.timestamps
    end
  end
end
