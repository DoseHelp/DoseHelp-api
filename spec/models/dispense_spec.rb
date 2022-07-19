require 'rails_helper'

RSpec.describe Dispense, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  subject {
    described_class.new(
      user_id: 1, 
      prescription_id: 1
    )
  }

  # it "Is valid with attributes" do
  #   expect(subject).to be_valid
  # end

  it "Not valid with empty attributes" do
    subject.user_id = ""
    expect(subject).not_to be_valid
  end
end
