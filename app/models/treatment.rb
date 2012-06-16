class Treatment < ActiveRecord::Base
  attr_accessible :anamnesis, :complaints, :diagnosis, :diagnosis_id, :doctor_id, :patient_id, :plandate, :tests

  has_many :scans
  belongs_to :doctors
  belongs_to :patients
  belongs_to :diagnoses
end
