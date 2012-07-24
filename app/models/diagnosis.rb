class Diagnosis < ActiveRecord::Base
	attr_accessible :code, :name
	validates_presence_of :code, :name

	has_many :treatments

	def self.search(search)
	  if search
	    where (['concat(name, \'--\', code) LIKE ?', "%#{search}%"])
	  else
	    scoped
	  end
	end  
end
