class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.rsv_time_sort(@schedules.length)
  end

  def new
    @reservation = Reservation.new
    @schedules   = Schedule.all
    @patients    = Patient.all
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      redirect_to reservations_path
    else
      render :new
    end
  end

  def edit
    @reservation = Reservation.find(params[:id])
    @schedules   = Schedule.all
    @patients    = Patient.all
  end

  def update
    reservation = Reservation.find(params[:id])
    reservation.update(reservation_params)
    redirect_to reservations_path
  end

  def destroy
    rsv = Reservation.find(params[:id])
    rsv.destroy
    redirect_to reservations_path
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