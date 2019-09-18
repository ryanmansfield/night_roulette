class Venue < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings
  validates :name, presence: true, uniqueness: true
  validates :location, presence: true

  def self.find_random(filters, user)
    # TODO: this will be the 3 bar rest nightclub filters and user will be user preferences

    possible_venues = []

    # Did the user check restaurant in the form?

      #if yes does the venue include restaurant in characteristics?
      venue.characteristics.include?("restaruant")
      # then add this venue to an array of possible venues



      # Did the user check bar in the form?

      #if yes does the venue include bar in characteristics?
      venue.characteristics.include?("bar")
      # then add this venue to an array of possible venues



       # Did the user check nightclub in the form?

      #if yes does the venue include nightclub in characteristics?
      venue.characteristics.include?("nightclub")
      # then add this venue to an array of possible venues


      # check the possible venues array for the users preferences(meat/sports/etc)

      # return only ones that match user preferences

      # Select a random location from thi newest array and use that as the venue for the booking

    Venue.last
  end
end

