class Reservation < ApplicationRecord
  with_options presence: true do
    validates :date
    validates :time
  end

  belongs_to :patient
  belongs_to :schedule
end
