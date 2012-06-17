class Treatment < ActiveRecord::Base
  attr_accessible :anamnesis, :complaints, :diagplane, :diagnosis_id, :doctor_id, :patient_id, :plandate, :tests
  validates_presence_of :doctor_id, :patient_id

  has_many :scans
  
  has_one :patient, :class_name => "Patient",  :foreign_key => "id", :primary_key => "patient_id"
  has_one :doctor, :class_name => "Doctor",  :foreign_key => "id", :primary_key => "doctor_id"
  has_one :diagnosis, :class_name => "Diagnosis",  :foreign_key => "id", :primary_key => "diagnosis_id"

  belongs_to :doctors, :class_name => "Doctor",  :foreign_key => "doctor_id"
  belongs_to :patients , :class_name => "Patient",  :foreign_key => "patient_id"
  belongs_to :diagnoses, :class_name => "Diagnosis", :foreign_key => "diagnosis_id"
end
