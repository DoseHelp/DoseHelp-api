FactoryBot.define do
  factory :note do
    details { "MyString" }
    prescription { nil }
    user { nil }
  end
end
