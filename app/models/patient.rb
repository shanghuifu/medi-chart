class Patient < ApplicationRecord
  with_options presence: true do
    validates :name
    validates :kana
    validates :phone
    validates :email
  end
  
  has_many :logs
  has_many :reservations
end
