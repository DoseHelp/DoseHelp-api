FactoryBot.define do
  factory :user do
    first_name { "MyString" }
    surname { "MyString" }
    admin { false }
    email { "MyString" }
    username { "MyString" }
    password_digest { "MyString" }
  end
end
