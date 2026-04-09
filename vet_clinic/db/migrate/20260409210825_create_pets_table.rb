class CreatePetsTable < ActiveRecord::Migration[8.1]
  def change
    create_table :pets do |t|
      t.string :name, null: false
      t.string :species, null: false
      t.string :breed
      t.date :date_of_birth
      t.decimal :weight
      t.integer :owner_id, null: false

      t.timestamps
    end
  end
end
