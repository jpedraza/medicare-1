class RenameColumn < ActiveRecord::Migration
  def up
    rename_column :treatments, :diagnosis, :diagplane
  end

  def down
    rename_column :treatments, :diagplane, :diagnosis
  end
end
