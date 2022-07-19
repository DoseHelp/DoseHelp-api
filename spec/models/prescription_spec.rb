require 'rails_helper'

RSpec.describe Prescription, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  subject {
    described_class.new(
      issue_date: "12/02/2021",
      expiry_date: "12/03/2021",
      takeaway: true,
      doctor_id: 1,
      patient_id: 2,
      drug_id: 2,
      prescription_valid: true
    )
  }

  # it "Is valid with attributes" do 
  #   expect(subject).to be_vaild
  # end

  it "Not valid with empty attributes" do
    subject.expiry_date = ""
    expect(subject).not_to be_valid
  end
end
