class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :password_hash, null: false
      t.integer :employee_id, null: false

      t.timestamps
    end
  end
end
