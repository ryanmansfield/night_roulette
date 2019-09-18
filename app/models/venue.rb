class Venue < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings
  validates :name, presence: true, uniqueness: true
  validates :location, presence: true
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  def self.find_random(filters, user)
    # TODO: this will be the 3 bar rest nightclub filters and user will be user preferences
    # is it a bar?
    # is it a restaruant
    # is it a nightclub
    # now cross check all of this with the users preferences

    Venue.last
  end
end
