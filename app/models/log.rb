class Log < ApplicationRecord
  validates :text, presence: true
  belongs_to :patient
end