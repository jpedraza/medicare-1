class Scantype < ActiveRecord::Base
  attr_accessible :name

  has_many :scans
end
