FactoryBot.define do
  factory :prescription do
    issue_date { "MyString" }
    expiry_date { "MyString" }
    takeaway { false }
    doctor { nil }
    patient { nil }
    drug { nil }
    prescription_valid { false }
  end
end
