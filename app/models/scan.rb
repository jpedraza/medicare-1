class Scan < ActiveRecord::Base
  attr_accessible :name, :scantype_id, :treatment_id
end
