class PrescriptionsController < ApplicationController
  before_action :set_prescription, only: [:show, :update, :destroy]
 
  # GET /prescriptions
  def index
    @prescriptions = Prescription.all

    render json: @prescriptions
  end

  # GET /prescriptions/1
  def show
    if @prescription
      render json: @prescription
    else
      render json: {"error": "Prescription not found, wrong id"}, status: :not_found
    end 
  end

  # POST /prescriptions
  def create
    @prescription = Prescription.new(prescription_params)

    if @prescription.save
      render json: @prescription, status: :created#, location: @prescription
    else
      render json: @prescription.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /prescriptions/1
  def update
    if @prescription.update(prescription_params)
      render json: @prescription
    else
      render json: @prescription.errors, status: :unprocessable_entity
    end
  end

  # DELETE /prescriptions/1
  def destroy
    @prescription.destroy
  end
  def prescriptions_list
    # get list of prescriptions for a certain patient 
    
    @prescriptions_list = Prescription.where(patient_id: params[:patient_id])
    render json: @prescriptions_list
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prescription
      @prescription = Prescription.find_by_id(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def prescription_params
      params.require(:prescription).permit(:issue_date, :expiry_date, :takeaway, :doctor_id, :patient_id, :drug_id, :prescription_valid)
    end
end
