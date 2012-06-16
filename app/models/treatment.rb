class Treatment < ActiveRecord::Base
  attr_accessible :anamnesis, :complaints, :diagnosis, :diagnosis_id, :doctor_id, :patient_id, :plandate, :tests
end
