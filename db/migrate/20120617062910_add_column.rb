class AddColumn < ActiveRecord::Migration
  def up
    add_column :treatments, :hasscan, :boolean
  end

  def down
    remove_column :treatments, :hasscan
  end
end
