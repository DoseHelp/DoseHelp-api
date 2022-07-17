FactoryBot.define do
  factory :patient do
    first_name { "MyString" }
    surname { "MyString" }
    dob { "MyString" }
    address { "MyString" }
    phone { "MyString" }
    gender { "MyString" }
    ihi { "MyString" }
    credit { 1.5 }
  end
end
