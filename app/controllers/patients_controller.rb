class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :update, :destroy]

  # GET /patients
  def index
    @patients = Patient.all

    render json: @patients
  end

  # GET /patients/1
  def show
    if @patient
      render json: @patient
    else
      render json: {"error": "Patient not found, wrong id"}, status: :not_found
    end 
  end

  # POST /patients
  def create
    @patient = Patient.new(patient_params)

    if @patient.save
      render json: @patient, status: :created #, location: @patient
    else
      render json: @patient.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /patients/1
  def update
    if @patient.update(patient_params)
      render json: @patient
    else
      render json: @patient.errors, status: :unprocessable_entity
    end
  end

  # DELETE /patients/1
  def destroy
    @patient.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient
      @patient = Patient.find_by_id(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def patient_params
      params.require(:patient).permit(:first_name, :surname, :dob, :address, :phone, :gender, :ihi, :credit)
    end
end
