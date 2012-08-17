class Scan < ActiveRecord::Base
  attr_accessible :name, :scantype_id, :treatment_id, :scanbody
  validates_presence_of :scantype_id, :name, :treatment_id  

  belongs_to :scantypes
  belongs_to :treatments

  has_attached_file :scanbody, :styles => { :medium => "400x400>", :thumb => "150x150>" }  
end
