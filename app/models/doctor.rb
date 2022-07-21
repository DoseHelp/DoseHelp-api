class Doctor < ApplicationRecord
    belongs_to :prescription
    validates_presence_of :first_name, :surname, :clinic, :address, :phone, :fax, :prescriber_number 
end
