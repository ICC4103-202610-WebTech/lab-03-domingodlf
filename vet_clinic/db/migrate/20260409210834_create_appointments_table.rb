class CreateAppointmentsTable < ActiveRecord::Migration[8.1]
  def change
    create_table :appointments do |t|
      t.integer :pet_id, null: false
      t.integer :vet_id, null: false
      t.datetime :date, null: false
      t.string :reason
      t.integer :status, null: false

      t.timestamps
    end
  end
end
