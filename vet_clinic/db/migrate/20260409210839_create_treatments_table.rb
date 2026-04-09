class CreateTreatmentsTable < ActiveRecord::Migration[8.1]
  def change
    create_table :treatments do |t|
      t.integer :appointment_id, null: false
      t.string :name, null: false
      t.string :medication
      t.string :dosage
      t.text :notes
      t.datetime :administered_at, null: false

      t.timestamps
    end
  end
end
