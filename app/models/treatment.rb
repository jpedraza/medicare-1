class Treatment < ActiveRecord::Base
  attr_accessible :anamnesis, :complaints, :diagnosis, :diagnosis_id, :doctor_id, :patient_id, :plandate, :tests

  has_many :scans
  
  has_one :patient, :class_name => "Patient",  :foreign_key => "id", :primary_key => "patient_id"
  has_one :doctor, :class_name => "Doctor",  :foreign_key => "id", :primary_key => "doctor_id"
  has_one :diagnosis, :class_name => "Diagnosis",  :foreign_key => "id", :primary_key => "diagnosis_id"

  belongs_to :doctors
  belongs_to :patients
  belongs_to :diagnoses
end
