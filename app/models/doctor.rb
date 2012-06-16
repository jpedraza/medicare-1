class Doctor < ActiveRecord::Base
  attr_accessible :name, :post

  has_many :treatments
end
