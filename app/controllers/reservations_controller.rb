class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
    @schedules = Schedule.all
  end

  def new
    @reservation = Reservation.new
    @schedules = Schedule.all
    @patients = Patient.all
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      redirect_to reservations_path
    else
      render :new
    end
  end

  private
  def reservation_params
    params.require(:reservation).permit(:"date(1i)",
                                        :"date(2i)",
                                        :"date(3i)",
                                        :schedule_id,
                                        :patient_id)
  end
end