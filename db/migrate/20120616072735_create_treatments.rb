class CreateTreatments < ActiveRecord::Migration
  def change
    create_table :treatments do |t|
      t.integer :doctor_id
      t.integer :patient_id
      t.text :complaints
      t.text :anamnesis
      t.text :diagnosis
      t.text :tests
      t.integer :diagnosis_id
      t.date :plandate

      t.timestamps
    end
  end
end
