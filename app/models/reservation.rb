class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :car

  validates :user_id, presence: true
  validates :car_id, presence: true
  validates :city, presence: true, length: { minimum: 2, maximum: 50 }
  validates :date, presence: true
end
