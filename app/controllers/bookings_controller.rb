class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update]

  def index
    @user = current_user
    @bookings = current_user.bookings
  end

  def show
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

  def edit
  end

  def update
    @booking.update(license_plate: booking_params[:license_plate],
                    status: booking_params[:status],
                    driver_name: booking_params[:driver_name],
                    price: booking_params[:price],
                    eta: booking_params[:eta],
                    pickup_time: booking_params[:pickup_time]
                  )
    redirect_to edit_booking_path(@booking)
  end

  def latest
    @bookings = Booking.all[0..10].reverse
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:license_plate, :status, :driver_name, :price, :eta, :pickup_time, venue_types: [])
  end
end
