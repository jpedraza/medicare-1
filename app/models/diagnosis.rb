class Diagnosis < ActiveRecord::Base
  attr_accessible :code, :name

  has_many :treatments
end
