require 'rails_helper'

RSpec.describe Doctor, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  subject {
    described_class.new(
      first_name: "Elijah", 
      surname: "Lewis", 
      clinic: "Brisbane", 
      address: "304 Annie St", 
      phone: "4921234", 
      fax: "234656856", 
      prescriber_number: "6987832455"
    )
  }

  it "is valid with attributes" do
    expect(subject).to be_valid
  end 

end
