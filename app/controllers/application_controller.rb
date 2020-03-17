class ApplicationController < ActionController::Base
  before_action :set_today_rsv
  
  private
  def set_today_rsv
    @schedules    = Schedule.all
    @today_rsv    = Reservation.where(date: Date.today)
  end
end
