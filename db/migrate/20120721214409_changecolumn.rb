class Changecolumn < ActiveRecord::Migration
  def up
    add_column :patients, :born, :datetime
    remove_column :patients, :age
  end

  def down
    add_column :patients, :age, :int
    remove_column :patients, :born
  end
end
