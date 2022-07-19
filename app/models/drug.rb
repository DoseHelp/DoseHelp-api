class Drug < ApplicationRecord
    validates_presence_of :name, :brand_name, :form, :strength, :cost
end
