class AddAttachmentScanbodyToScans < ActiveRecord::Migration
  def self.up
    change_table :scans do |t|
      t.has_attached_file :scanbody
    end
  end

  def self.down
    drop_attached_file :scans, :scanbody
  end
end
