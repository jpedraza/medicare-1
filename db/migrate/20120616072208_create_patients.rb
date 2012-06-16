class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.string :card
      t.string :address
      t.integer :ltreatment_id
      t.boolean :hasscan
      t.integer :age

      t.timestamps
    end
  end
end
