class Prescription < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient
  belongs_to :drug
  validates_presence_of :issue_date, :expiry_date, :takeaway, :doctor_id, :patient_id, :drug_id, :prescription_valid
end
