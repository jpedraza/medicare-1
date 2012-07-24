class Patient < ActiveRecord::Base
	attr_accessible :address, :born, :card, :hasscan, :ltreatment_id, :name
	validates_presence_of :address, :born, :card, :name

	has_many :treatments
	belongs_to :lasttreatment, :class_name => "Treatment", :foreign_key => "ltreatment_id", :include => [:doctor, :diagnosis]

	def self.search(search)
	  if search
	    where (['concat(name, \'--\', born, \'--\', card, \'--\', address) ILIKE ?', "%#{search}%"])
	  else
	    scoped
	  end
	end    
end
