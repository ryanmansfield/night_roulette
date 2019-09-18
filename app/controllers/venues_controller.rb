class VenuesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_venue, only: [:show, :update]
  before_action :redirect_unless_authorized, only: [:show, :update]

  def index
    @venues = Venue.all
    @aphigh = GooglePlaces.new.find_by_location
  end

  def show
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
