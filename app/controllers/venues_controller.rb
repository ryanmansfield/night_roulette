class VenuesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_venue, only: [:show, :update]

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
  end

  def update
    old_rating = @venue.rating
    updated_rating  = ((old_rating * @venue.times_rated) + params[:rating].to_i) / (@venue.times_rated + 1)
    @venue.rating = updated_rating
    @venue.times_rated += 1
    if @venue.update(rating: updated_rating)
      respond_to do |format|
        format.html { redirect_to booking_path(Booking.last.id) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'rating-form' }
        format.js  # <-- idem
      end
    end
  end

  private

  def set_venue
    @venue = Venue.find(params[:id])
  end

  def venue_params
    params.require(:venue).permit(:rating)
  end

  def redirect_unless_authorized
    redirect_to root_path, notice: "Nope!" unless @venue.users.exists?(current_user.id)
  end
end
