class Patient < ActiveRecord::Base
  attr_accessible :address, :age, :card, :hasscan, :ltreatment_id, :name

  has_many :treatments
  has_one :lasttreatment, :class_name => "Treatment", :foreign_key => "id", :primary_key => "ltreatment_id", :include => [:doctor, :diagnosis]

  #has_one :lastdoctor, :class_name => "Doctor", :through => :lasttreatment
  #belongs_to :ltreatments, class_name => "Treatment", :foreign_key => "ltreatment_id"
end
