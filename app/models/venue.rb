class Venue < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings
  validates :name, presence: true, uniqueness: true
  validates :location, presence: true

  def self.find_random(filters, user)
    # TODO: this will be the 3 bar rest nightclub filters and user will be user preferences
    # is it a bar?
      venue.characteristics.include?("restaruant")
    # is it a restaruant
      venue.characteristics.include?("bar")
    # is it a nightclub
      venue.characteristics.include?("nightclub")
    # now cross check all of this with the users preferences

    Venue.last
  end
end

