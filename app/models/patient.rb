class Patient < ApplicationRecord
  with_options presence: true do
    validates :name
    validates :kana
    validates :phone
    validates :email
  end
  
  has_many :logs, dependent: :delete_all
  has_many :reservations, dependent: :destroy
end
