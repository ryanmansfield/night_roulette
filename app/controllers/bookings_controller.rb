class BookingsController < ApplicationController
  before_action :set_booking, only: [ :edit, :update, :fetch_status]

  skip_before_action :verify_authenticity_token, only: :fetch_status
  skip_before_action :authenticate_user!, if: -> { params[:token].present? }

  def index
    @user = current_user
    @all_venues = Venue.all.map { |v| { lat: v.latitude, lng: v.longitude } }
    @my_bookings = current_user.bookings
    @markers = @all_venues.filter { |v| !v[:lat].nil? }
    # raise
  end

  def show
    if params[:id]
      # Show booking like normal
      @booking = Booking.find(params[:id])
    else
      # Show booking with token
      @booking = Booking.find_by(token: params[:token])
    end

    # ORIGINAL SHOW METHOD
    # @booking = Booking.find(params[:id])

    @venue = @booking.venue
    @facts = @venue.cool_facts
    @venues = Venue.geocoded
    @all_venues = Venue.all.map { |v| { lat: v.latitude, lng: v.longitude } }
    @markers = @all_venues.filter { |v| !v[:lat].nil? }

    # marker for map to display the venue location
     # @markers = [{
     #     lat: @venue.latitude,
     #     lng: @venue.longitude
     # }]
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

  def fetch_status
    @venue = @booking.venue
    @facts = @venue.cool_facts
    @venues = Venue.geocoded
    @markers = [{
        lat: @venue.latitude,
        lng: @venue.longitude
    }]
    @price = @venue.price
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:license_plate, :passengers, :status, :driver_name, :price, :eta, :pickup_time, venue_types: [])
  end
end
