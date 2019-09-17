class Venue < ApplicationRecord
  has_many :users, through: :bookings
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
end
