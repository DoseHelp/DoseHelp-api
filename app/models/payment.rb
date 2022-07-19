class Payment < ApplicationRecord
  belongs_to :prescription
  belongs_to :patient
  validates_presence_of :prescription_id, :patient_id
end
