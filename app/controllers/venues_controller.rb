class VenuesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_venue, only: [:show, :update]
  before_action :redirect_unless_authorized, only: [:show, :update]

  def index
    @venues = Venue.all
    @bars = Venue.where(venue_type: "bar").shuffle
    @restaurants = Venue.where(venue_type: "restaurant").shuffle
    @nightclubs = Venue.where(venue_type: "nightclub").shuffle
    @random_first = [@bars[0], @restaurants[1], @nightclubs[1], @bars[1]]
    @random_last = [@restaurants[2], @bars[3], @nightclubs[2], @restaurants[3]]

    #@aphigh = GooglePlaces.new.find
  end

  def show
    @venue = Venue.find(params[:id])
    @venues = Venue.geocoded
    @markers = [{
        lat: @venue.latitude,
        lng: @venue.longitude
    }]
  end

  def update
  end

  private

  def set_venue
    @venue = Venue.find(params[:id])
  end

  def redirect_unless_authorized
    redirect_to root_path, notice: "Nope!" unless @venue.users.exists?(current_user.id)
  end
end
