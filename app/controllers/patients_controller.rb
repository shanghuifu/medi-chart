class PatientsController < ApplicationController
  def index
    @patients = Patient.all
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)
    if @patient.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @patient = Patient.find(params[:id])
    @logs = @patient.logs.includes(:patient)
    @log = Log.new
  end

  private
  def patient_params
    params.require(:patient).permit(:name, :kana, :phone, :email)
  end
end