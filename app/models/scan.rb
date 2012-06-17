class Scan < ActiveRecord::Base
  attr_accessible :name, :scantype_id, :treatment_id
  validates_presence_of :scantype_id, :name, :treatment_id  

  belongs_to :scantypes
  belongs_to :treatments
end
