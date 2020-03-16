class Reservation < ApplicationRecord
  with_options presence: true do
    validates :date
  end

  belongs_to :patient
  belongs_to :schedule

  def rsv_date_check(days)
    none = ""
    if self.date == Date.today + days
      return self.patient.name
    else
      return none
    end
  end
  
  def self.rsv_time_sort(schedules)
    sorted_ary = []
    schedules.times do |i|
      sorted_ary << Reservation.where(schedule_id: i + 1,
                                      date: Date.today..Date.today + 13)
    end
    return sorted_ary
  end

end
