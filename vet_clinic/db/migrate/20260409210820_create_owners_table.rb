class CreateOwnersTable < ActiveRecord::Migration[8.1]
  def change
    create_table :owners do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email
      t.string :phone
      t.text :address

      t.timestamps
    end
  end
end
