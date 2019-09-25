class BookingsController < ApplicationController
  def index
    @user = current_user
    @bookings = current_user.bookings
  end

  def show
    if params[:id]
      # Show booking like normal
      @booking = Booking.find(params[:id])
    else
      # Show booking with token
    end

    # ORIGINAL SHOW METHOD
    # @booking = Booking.find(params[:id])
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

  def token_gen
    # Generate a random lowercase letter
    letter = (0...1).map { ('A'..'Z').to_a[rand(26)] }.join
    # GENERATE 5 random numbers in a string
    numbers = (0...5).map { (0..9).to_a[rand(5)] }.join
    # COMBINED TOKEN
    token = letter + numbers
  end

end












