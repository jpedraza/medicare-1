class CreateScantypes < ActiveRecord::Migration
  def change
    create_table :scantypes do |t|
      t.string :name

      t.timestamps
    end
  end
end
