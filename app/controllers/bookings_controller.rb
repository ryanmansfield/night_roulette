class BookingsController < ApplicationController
  def index
    @user = current_user
    @booking = current_user.bookings
  end

  def new
    @venue = Venue.find(params[:venue_id])
    @booking = Booking.new
  end

  def show
    @booking = Booking.find(params[:id])
    @venue = @booking.venue
  end

  def create
    @venue = Venue.find(params[:venue_id])
    @user = current_user
    @booking = Booking.new(booking_params)
    @booking.venue = @venue
    @booking.user = @user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :user_id, :time)
  end
end
