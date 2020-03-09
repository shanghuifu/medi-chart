class Reservation < ApplicationRecord
  with_options presence: true do
    validates :date
  end

  belongs_to :patient
  belongs_to :schedule

  require "date"
  
  def rsv_search(schedule_id, days)
    none = ""
    if self.date == Date.today + days && self.schedule_id == schedule_id
      return self.patient.name
    else
      return none 
    end
  end
end
