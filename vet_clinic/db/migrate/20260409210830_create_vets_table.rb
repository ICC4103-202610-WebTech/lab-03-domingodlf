class CreateVetsTable < ActiveRecord::Migration[8.1]
  def change
    create_table :vets do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email
      t.string :phone
      t.string :specialization, null: false

      t.timestamps
    end
  end
end
