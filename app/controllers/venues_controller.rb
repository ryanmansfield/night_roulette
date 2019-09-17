class VenuesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true

  def index
    @venues = Venue.all
  end

  def show
  end

  def update
  end
end
