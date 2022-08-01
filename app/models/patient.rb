class Patient < ApplicationRecord
    has_many :prescriptions
    validates_presence_of :first_name, :surname, :dob, :address, :phone, :gender, :ihi, :credit
end
