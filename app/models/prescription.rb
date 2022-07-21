class Prescription < ApplicationRecord
  has_one :doctor
  has_one :patient
  has_one :drug
  validates_presence_of :issue_date, :expiry_date, :takeaway, :doctor_id, :patient_id, :drug_id, :prescription_valid
end
