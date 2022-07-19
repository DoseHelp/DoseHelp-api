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

RSpec.describe "/payments", type: :request do
  # This should return the minimal set of attributes required to create a valid
  # Payment. As you add validations to Payment, be sure to
  # adjust the attributes here as well.
  # let(:valid_attributes) {
  #   skip("Add a hash of attributes valid for your model")
  # }

  # let(:invalid_attributes) {
  #   skip("Add a hash of attributes invalid for your model")
  # }

  # # This should return the minimal set of values that should be in the headers
  # # in order to pass any filters (e.g. authentication) defined in
  # # PaymentsController, or in your router and rack
  # # middleware. Be sure to keep this updated too.
  # let(:valid_headers) {
  #   {}
  # }

  # describe "GET /index" do
  #   it "renders a successful response" do
  #     Payment.create! valid_attributes
  #     get payments_url, headers: valid_headers, as: :json
  #     expect(response).to be_successful
  #   end
  # end

  # describe "GET /show" do
  #   it "renders a successful response" do
  #     payment = Payment.create! valid_attributes
  #     get payment_url(payment), as: :json
  #     expect(response).to be_successful
  #   end
  # end

  # describe "POST /create" do
  #   context "with valid parameters" do
  #     it "creates a new Payment" do
  #       expect {
  #         post payments_url,
  #              params: { payment: valid_attributes }, headers: valid_headers, as: :json
  #       }.to change(Payment, :count).by(1)
  #     end

  #     it "renders a JSON response with the new payment" do
  #       post payments_url,
  #            params: { payment: valid_attributes }, headers: valid_headers, as: :json
  #       expect(response).to have_http_status(:created)
  #       expect(response.content_type).to match(a_string_including("application/json"))
  #     end
  #   end

  #   context "with invalid parameters" do
  #     it "does not create a new Payment" do
  #       expect {
  #         post payments_url,
  #              params: { payment: invalid_attributes }, as: :json
  #       }.to change(Payment, :count).by(0)
  #     end

  #     it "renders a JSON response with errors for the new payment" do
  #       post payments_url,
  #            params: { payment: invalid_attributes }, headers: valid_headers, as: :json
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

  #     it "updates the requested payment" do
  #       payment = Payment.create! valid_attributes
  #       patch payment_url(payment),
  #             params: { payment: new_attributes }, headers: valid_headers, as: :json
  #       payment.reload
  #       skip("Add assertions for updated state")
  #     end

  #     it "renders a JSON response with the payment" do
  #       payment = Payment.create! valid_attributes
  #       patch payment_url(payment),
  #             params: { payment: new_attributes }, headers: valid_headers, as: :json
  #       expect(response).to have_http_status(:ok)
  #       expect(response.content_type).to match(a_string_including("application/json"))
  #     end
  #   end

  #   context "with invalid parameters" do
  #     it "renders a JSON response with errors for the payment" do
  #       payment = Payment.create! valid_attributes
  #       patch payment_url(payment),
  #             params: { payment: invalid_attributes }, headers: valid_headers, as: :json
  #       expect(response).to have_http_status(:unprocessable_entity)
  #       expect(response.content_type).to match(a_string_including("application/json"))
  #     end
  #   end
  # end

  # describe "DELETE /destroy" do
  #   it "destroys the requested payment" do
  #     payment = Payment.create! valid_attributes
  #     expect {
  #       delete payment_url(payment), headers: valid_headers, as: :json
  #     }.to change(Payment, :count).by(-1)
  #   end
  # end
end