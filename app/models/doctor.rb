class Doctor < ApplicationRecord
    has_many :prescriptions
    validates_presence_of :first_name, :surname, :clinic, :address, :phone, :fax, :prescriber_number 
end
