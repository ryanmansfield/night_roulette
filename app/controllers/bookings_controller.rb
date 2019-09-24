class BookingsController < ApplicationController
  def index
    @user = current_user
    @bookings = current_user.bookings
  end

  def show
    @booking = Booking.find(params[:id])
    @venue = @booking.venue
    @facts = @venue.cool_facts
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
    params.require(:booking).permit(:date, :time, :passengers, venue_types: [])
  end
end
