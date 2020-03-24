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
    @logs    = @patient.logs.includes(:patient)
    @log     = Log.new
    @rsvs    = Reservation.where(patient_id: params[:id])
                          .where('date >= ?', Date.today)
                          .order(:date)
  end

  def edit
    @patient = Patient.find(params[:id])
  end

  def update
    patient = Patient.find(params[:id])
    patient.update(patient_params)
    redirect_to patient_path(params[:id])
  end

  def destroy
    patient = Patient.find(params[:id])
    patient.destroy
    redirect_to reservations_path
  end

  private
  def patient_params
    params.require(:patient).permit(:name, :kana, :phone, :email)
  end
end