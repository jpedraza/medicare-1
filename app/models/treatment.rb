class Treatment < ActiveRecord::Base
  attr_accessible :anamnesis, :complaints, :diagplane, :diagnosis_id, :doctor_id, :patient_id, :plandate, :tests
  validates_presence_of :doctor_id, :patient_id

  has_many :scans
  
  belongs_to :doctor, :class_name => "Doctor",  :foreign_key => "doctor_id"
  belongs_to :patient , :class_name => "Patient",  :foreign_key => "patient_id"
  belongs_to :diagnosis, :class_name => "Diagnosis", :foreign_key => "diagnosis_id"
end
