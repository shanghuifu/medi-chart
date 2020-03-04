class Schedule < ApplicationRecord
  validates :time, presence: true
  has_many :schedules
end
