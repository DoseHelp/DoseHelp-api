require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/patients", type: :request do

  before(:each) do
    FactoryBot.create(:patient, first_name: "Ethan", surname: "Thomas", dob: "19/04/1990", address: "12 James St, Woolloongabba 4169", phone: "0425743149", gender: "Male", ihi: "6504765474394843", credit: 10.00)
    FactoryBot.create(:patient, first_name: "Levi", surname: "Ward", dob: "03/27/1999", address: "12 James St, Woolloongabba 4169", phone: "0493037710", gender: "Male", ihi: "7463958776351234", credit: 100.00)
  end 

  describe "get all patients at /patients" do 
    it "returns all patients" do 
      get "/patients"
      expect(response).to have_http_status(200)
      expect(JSON.parse(response.body).size).to eq(2)
    end 
  end 

  describe "get patient at /patients/:id" do 
    it "returns patient based on param" do 
      get "/patients/3"
      expect(response).to have_http_status(200)
      expect(response.body).to include("Ethan")
    end 

    it "returns not found based on the wrong param" do 
      get "/patients/65"
      expect(response).to have_http_status(:not_found)
      expect(response.body).to include("not found")
    end 
  end 
  # This should return the minimal set of attributes required to create a valid
  # Patient. As you add validations to Patient, be sure to
  # adjust the attributes here as well.
  # let(:valid_attributes) {
  #   skip("Add a hash of attributes valid for your model")
  # }

  # let(:invalid_attributes) {
  #   skip("Add a hash of attributes invalid for your model")
  # }

  # # This should return the minimal set of values that should be in the headers
  # # in order to pass any filters (e.g. authentication) defined in
  # # PatientsController, or in your router and rack
  # # middleware. Be sure to keep this updated too.
  # let(:valid_headers) {
  #   {}
  # }

  # describe "GET /index" do
  #   it "renders a successful response" do
  #     Patient.create! valid_attributes
  #     get patients_url, headers: valid_headers, as: :json
  #     expect(response).to be_successful
  #   end
  # end

  # describe "GET /show" do
  #   it "renders a successful response" do
  #     patient = Patient.create! valid_attributes
  #     get patient_url(patient), as: :json
  #     expect(response).to be_successful
  #   end
  # end

  # describe "POST /create" do
  #   context "with valid parameters" do
  #     it "creates a new Patient" do
  #       expect {
  #         post patients_url,
  #              params: { patient: valid_attributes }, headers: valid_headers, as: :json
  #       }.to change(Patient, :count).by(1)
  #     end

  #     it "renders a JSON response with the new patient" do
  #       post patients_url,
  #            params: { patient: valid_attributes }, headers: valid_headers, as: :json
  #       expect(response).to have_http_status(:created)
  #       expect(response.content_type).to match(a_string_including("application/json"))
  #     end
  #   end

  #   context "with invalid parameters" do
  #     it "does not create a new Patient" do
  #       expect {
  #         post patients_url,
  #              params: { patient: invalid_attributes }, as: :json
  #       }.to change(Patient, :count).by(0)
  #     end

  #     it "renders a JSON response with errors for the new patient" do
  #       post patients_url,
  #            params: { patient: invalid_attributes }, headers: valid_headers, as: :json
  #       expect(response).to have_http_status(:unprocessable_entity)
  #       expect(response.content_type).to match(a_string_including("application/json"))
  #     end
  #   end
  # end

  # describe "PATCH /update" do
  #   context "with valid parameters" do
  #     let(:new_attributes) {
  #       skip("Add a hash of attributes valid for your model")
  #     }

  #     it "updates the requested patient" do
  #       patient = Patient.create! valid_attributes
  #       patch patient_url(patient),
  #             params: { patient: new_attributes }, headers: valid_headers, as: :json
  #       patient.reload
  #       skip("Add assertions for updated state")
  #     end

  #     it "renders a JSON response with the patient" do
  #       patient = Patient.create! valid_attributes
  #       patch patient_url(patient),
  #             params: { patient: new_attributes }, headers: valid_headers, as: :json
  #       expect(response).to have_http_status(:ok)
  #       expect(response.content_type).to match(a_string_including("application/json"))
  #     end
  #   end

  #   context "with invalid parameters" do
  #     it "renders a JSON response with errors for the patient" do
  #       patient = Patient.create! valid_attributes
  #       patch patient_url(patient),
  #             params: { patient: invalid_attributes }, headers: valid_headers, as: :json
  #       expect(response).to have_http_status(:unprocessable_entity)
  #       expect(response.content_type).to match(a_string_including("application/json"))
  #     end
  #   end
  # end

  # describe "DELETE /destroy" do
  #   it "destroys the requested patient" do
  #     patient = Patient.create! valid_attributes
  #     expect {
  #       delete patient_url(patient), headers: valid_headers, as: :json
  #     }.to change(Patient, :count).by(-1)
  #   end
  # end
end
