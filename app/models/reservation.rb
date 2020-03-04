class Reservation < ApplicationRecord
  with_options presence: true do
    validates :date
    validates :time
  end
end
