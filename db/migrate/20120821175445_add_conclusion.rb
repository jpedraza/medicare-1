class AddConclusion < ActiveRecord::Migration
  def up
    add_column :treatments, :conclusion, :text
  end

  def down
    remove_column :treatments, :conclusion
  end
end
