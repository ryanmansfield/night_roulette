class Venue < ApplicationRecord
  has_many :users, through: :bookings
end
