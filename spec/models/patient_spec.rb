require 'rails_helper'

RSpec.describe Patient, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  subject {
    described_class.new(
    first_name: "Ethan", 
    surname: "Thomas", 
    dob: "19/04/1990", 
    address: "12 James St, Woolloongabba 4169", 
    phone: "0425743149", 
    gender: "Male", 
    ihi: "6504765474394843", 
    credit: 10.00
    )  
  }

  it "Is valid with attributes" do 
    expect(subject).to be_valid
  end

  it "Not valid with empty attributes" do
    subject.first_name = ""
    expect(subject).not_to be_valid
  end

  
end
