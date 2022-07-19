class Dispense < ApplicationRecord
  belongs_to :user
  belongs_to :prescription
  validates_presence_of :user_id, :prescription_id
end
