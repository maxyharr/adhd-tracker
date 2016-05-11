class DosagesController < ApplicationController

  # before_action :set_dosage, only: [:show, :edit, :update, :destroy]
  before_action :set_medication, only: [:index, :create]
  before_action :set_dosage, only: [:destroy]

  # GET medications/1/dosages
  # GET medications/1/dosages.json
  def index
    @dosages = @medication.dosages
    respond_to do |format|
      format.html {render :index}
      format.json {render json: {medication: @medication, dosages: @dosages}}
    end
  end

  def create
    @dosage = @medication.dosages.create(dosage_params)
    redirect_to edit_medication_path(@medication)
  end

  def destroy
    @medication = @dosage.medication
    @dosage.destroy
    redirect_to edit_medication_path(@medication)
  end

  private

  def set_medication
    @medication = Medication.find(params[:id])
  end


  def set_dosage
    @dosage = Dosage.find(params[:id])
  end

  def dosage_params
    params.require(:dosage).permit(:value, :unit)
  end

end
