class Reservation < ApplicationRecord
  with_options presence: true do
    validates :date
  end

  belongs_to :patient
  belongs_to :schedule
end
