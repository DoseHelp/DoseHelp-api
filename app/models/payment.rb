class Payment < ApplicationRecord
  belongs_to :prescription
  belongs_to :patient
end
