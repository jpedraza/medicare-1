class Patient < ActiveRecord::Base
  attr_accessible :address, :age, :card, :hasscan, :ltreatment_id, :name

  has_many :treatments
end
