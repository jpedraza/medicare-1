class Patient < ActiveRecord::Base
  attr_accessible :address, :age, :card, :hasscan, :ltreatment_id, :name
  validates_presence_of :address, :age, :card, :name

  has_many :treatments
  belongs_to :lasttreatment, :class_name => "Treatment", :foreign_key => "ltreatment_id", :include => [:doctor, :diagnosis]
end
