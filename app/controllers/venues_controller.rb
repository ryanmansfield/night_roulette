class VenuesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @venues = Venue.all
  end

  def show
  end

  def update
  end
end
