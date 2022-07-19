class Note < ApplicationRecord
  belongs_to :prescription
  belongs_to :user
  validates_presence_of :prescription_id, :user_id
end
