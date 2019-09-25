class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :venue

  before_validation :assign_random_venue, on: :create

  validates :date, presence: true
  validates :time, presence: true
  validates :status, presence: true

  after_save :call_uber, on: :create

  attr_accessor :venue_types

  private

  def assign_random_venue
    @venue_types = ['restaurant', 'bar', 'nightclub'] if @venue_types[1].blank?

    self.venue = Venue.find_random(@venue_types)
    self.time = Time.now
    self.date = Date.today
  end

  def call_uber
    # TODO asynchronously call Uber API
  end
end
