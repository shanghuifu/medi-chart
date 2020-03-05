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
    # binding.pry
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      redirect_to reservations_path
    else
      render :new
    end
  end

  private
  def reservation_params
    a = params.require(:reservation).permit(:"date(1i)",
                                        :"date(2i)",
                                        :"date(3i)",
                                        :schedule_id,
                                        :patient_id)
    # date = Date.new(a["date(1i)"], a["date(2i)"], a["date(3i)"])
    # params.merge(date: date)
  end
end