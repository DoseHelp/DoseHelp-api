class Drug < ApplicationRecord
    belongs_to :prescription
    validates_presence_of :name, :brand_name, :form, :strength, :cost
end
