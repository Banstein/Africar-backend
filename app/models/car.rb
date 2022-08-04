class Car < ApplicationRecord
  has_many :reservations, dependent: :destroy
  has_many :users, through: :reservations, dependent: :destroy

  validates :name, presence: true, length: { minimum: 2, maximum: 50 }
  validates :description, presence: true, length: { minimum: 3, maximum: 500 }
  validates :picture, presence: true, numericality: { greater_than: 0 }
  validates :price, presence: true
  validates :user_id, presence: true
end
