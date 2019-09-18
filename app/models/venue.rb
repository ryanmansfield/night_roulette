class Venue < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings
  validates :name, presence: true, uniqueness: true
  validates :location, presence: true

  def self.find_random(filters, user)
    # TODO this will be the 3 bar rest nightclub filters and user will be user preferences
    Venue.last
  end
end
