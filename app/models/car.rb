class Car < ApplicationRecord
  has_many :reservation, dependent: :destroy
  has_many :users, through: :reservations, dependent: :destroy

  validates :name, presence: true, length: { minimum: 2, maximum: 50 }
  validates :description, presence: true, length: { minimum: 3, maximum: 500 }
  validates :picture, presence: true
  validates :price, presence: true
end
