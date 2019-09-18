class Venue < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings
  validates :name, presence: true, uniqueness: true
  validates :location, presence: true

  def self.find_random(type, user)
    # TODO: this will be the 3 bar rest nightclub types and user will be user preferences

    # Find which types were selected from the new bookings form

    # Check venues were type match to see if they qualify for the users preferences


    Venue.last
  end
end
