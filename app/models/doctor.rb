class Doctor < ActiveRecord::Base
  attr_accessible :name, :post
  validates_presence_of :post, :name

  has_many :treatments
end
