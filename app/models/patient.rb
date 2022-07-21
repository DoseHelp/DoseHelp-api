class Patient < ApplicationRecord
    has_many :prescriptions
    has_one :payment
    validates_presence_of :first_name, :surname, :dob, :address, :phone, :gender, :ihi, :credit
end
