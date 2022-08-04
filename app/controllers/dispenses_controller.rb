class DispensesController < ApplicationController
  before_action :set_dispense, only: [:show, :update, :destroy]

  # GET /dispenses
  def index
    @dispenses = Dispense.all

    render json: @dispenses
  end

  # GET /dispenses/1
  def show
    if @dispense
      render json: @dispense
    else
      render json: {"error": "Wrong not found, wrong id"}, status: :not_found
    end
  end

  # POST /dispenses
  def create
    @dispense = Dispense.new(dispense_params)
    
    if @dispense.save
      render json: @dispense, status: :created#, location: @dispense
    else
      render json: @dispense.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dispenses/1
  def update
    if @dispense.update(dispense_params)
      render json: @dispense
    else
      render json: @dispense.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dispenses/1
  def destroy
    @dispense.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dispense
      @dispense = Dispense.find_by_id(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dispense_params
      params.require(:dispense).permit(:user_id, :prescription_id)
    end
end
