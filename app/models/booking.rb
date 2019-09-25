class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :venue

  before_validation :assign_random_venue, on: :create

  after_validation :token_gen, on: :create

  validates :date, presence: true
  validates :time, presence: true

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

  def token_gen
    # Generate a random lowercase letter
    letter = (0...1).map { ('A'..'Z').to_a[rand(26)] }.join
    # GENERATE 5 random numbers in a string
    numbers = (0...5).map { (0..9).to_a[rand(5)] }.join
    # COMBINED TOKEN
    token = letter + numbers
  end

end
