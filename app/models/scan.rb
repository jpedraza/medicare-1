class Scan < ActiveRecord::Base
  attr_accessible :name, :scantype_id, :treatment_id, :scanbody
  validates_presence_of :scantype_id, :name, :treatment_id  

  belongs_to :scantype
  belongs_to :treatment

  has_attached_file :scanbody,	:styles => { :medium => "400x400^", :thumb => "160x160^" } , 
    							:convert_options => {:all => "-gravity Center", :thumb => "-gravity Center -crop 160x160+0+0"}
end
