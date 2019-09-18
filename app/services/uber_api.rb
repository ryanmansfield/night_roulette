require 'uber'

class UberRides
  def initialize(attributes = {})
    @client = Uber::Client.new do |config|
      config.server_token  = ENV['config.server_token']
      config.client_id     = ENV['config.client_id']
      config.client_secret = ENV['config.client_secret']
      config.sandbox       = true
    end
    @product_id = attributes[:product_id]
    @start_latitude = attributes[:start_latitude]
    @start_longitude = attributes[:start_longitude]
    @end_latitude = attributes[:end_latitude]
    @end_longitude = attributes[:end_longitude]
  end

  def trip
    @client.trip_request(product_id: @product_id,
                        start_latitude: @start_latitude, start_longitude: @start_longitude,
                        end_latitude: @end_latitude, end_longitude: @end_longitude)
  end

  def price_estimation
    @client.price_estimation(start_latitude: @start_latitude, start_longitude: @start_longitude,
                              end_latitude: @end_latitude, end_longitude: @end_longitude)
  end
end
