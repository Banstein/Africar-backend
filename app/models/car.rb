class Car < ApplicationRecord
  belongs_to :user
  has_many :reservation, dependent: :destroy

  validates :name, presence: true, length: { minimum: 2, maximum: 50 }
  validates :description, presence: true, length: { minimum: 3, maximum: 500 }
  validates :picture, presence: true
  validates :price, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :user_id, presence: true
end
