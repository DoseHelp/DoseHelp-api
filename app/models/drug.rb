class Drug < ApplicationRecord
    has_many :prescriptions
    validates_presence_of :name, :brand_name, :form, :strength, :cost
end
