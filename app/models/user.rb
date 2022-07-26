class User < ApplicationRecord
  has_many :cars, dependent: :destroy
  has_many :reservations, dependent: :destroy

  validates :username, presence: true, length: { minimum: 2, maximum: 50 }
  validates :password, presence: true, length: { minimum: 6, maximum: 50 }
end
