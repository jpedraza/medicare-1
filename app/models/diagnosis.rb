class Diagnosis < ActiveRecord::Base
  attr_accessible :code, :name
  validates_presence_of :code, :name

  has_many :treatments
end
