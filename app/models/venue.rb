class Venue < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings
  validates :name, presence: true, uniqueness: true
  validates :location, presence: true

  def self.find_random(filters, user)
    # TODO
    Venue.last
  end
end
