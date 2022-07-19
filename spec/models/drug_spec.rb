require 'rails_helper'

RSpec.describe Drug, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  subject{
    described_class.new(
      name: "Methadone", 
      brand_name: "Biodone", 
      form: "liquid", 
      strength: "5mg/ml", 
      cost: 5
    )
  }

  it "Is valid with attributes" do
    expect(subject).to be_valid
  end

  it "Not valid with empty attributes" do
    subject.name = ""
    expect(subject).not_to be_valid
  end

end
