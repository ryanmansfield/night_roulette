class BookingsController < ApplicationController
  def index
    @user = current_user
    @bookings = current_user.bookings
  end

  def show
    if params[:id]
      @booking = Booking.find(params[:id])
    else
      @booking = Booking.find(token)
    end
    @venue = @booking.venue
    @facts = @venue.cool_facts
    @venues = Venue.geocoded
    @markers = [{
        lat: @venue.latitude,
        lng: @venue.longitude
    }]
    @price = @venue.price
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = current_user.bookings.new(booking_params)
    if @booking.save
      # call the call_uber method to generate an uber request (Bookings model)
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :time, venue_types: [])
  end
end
