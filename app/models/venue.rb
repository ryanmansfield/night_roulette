class Venue < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings
  validates :name, presence: true, uniqueness: true
  validates :location, presence: true
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  def self.find_random(venue_types)
    where(venue_type: venue_types).order("RANDOM()").first
  end

  def self.curated_for_user_count(user)
    where(user.prefs_sql).group(:venue_type).count
  end
end
