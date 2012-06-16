class CreateScans < ActiveRecord::Migration
  def change
    create_table :scans do |t|
      t.string :name
      t.integer :scantype_id
      t.integer :treatment_id

      t.timestamps
    end
  end
end
