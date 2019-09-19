require 'uber'

class UberApi
  attr_accessor :client , :product_id, :start_latitude, :start_longitude, :end_latitude, :end_longitude

  def initialize(attributes = {})
    @client = Uber::Client.new do |config|
      config.server_token  = ENV['UBER_SERVER_TOKEN']
      config.client_id     = ENV['UBER_CLIENT_ID']
      config.client_secret = ENV['UBER_CLIENT_SECRET']
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
    @client.price_estimations(start_latitude: 34.03, start_longitude: -117.04,
                              end_latitude: 34.05, end_longitude: -117.18)
  end

  def products
    client.products(latitude: 34.03, longitude: -117.04)
  end
end

# curl -X POST 'https://sandbox-api.uber.com/v1.2/requests' \
#      -H 'Content-Type: application/json' \
#      -H 'Authorization: Bearer JA.VUNmGAAAAAAAEgASAAAABwAIAAwAAAAAAAAAEgAAAAAAAAH4AAAAFAAAAAAADgAQAAQAAAAIAAwAAAAOAAAAzAAAABwAAAAEAAAAEAAAAI5t_eSy2db1YXJU7euWL6OnAAAA7Uu8O-RS3dGIXAW6IwCgBgxNsuCRU1MNPS5OJEIOXv6qLVGvbTIwjytZ9Oa8l15q2VW-p0e7CdYEbsYTKObX2WW5ZTZ93PEE2e0q13zag60f_6FQ6rsvObRbs5NRro9apjOiEZ1p00MJ2evY_1lYCpxmQZ1Fi_oL4P-W3CQOgB3b9vURqeoV_Vv22_BUJZaSSPnXk5rLy-8BKzxvSrBZjX3v4SbJ8NcADAAAAAO1H8_xeMvTZt0UrSQAAABiMGQ4NTgwMy0zOGEwLTQyYjMtODA2ZS03YTRjZjhlMTk2ZWU' \
#      -d '{ "fare_id": "abcd", "product_id": "a1111c8c-c720-46c3-8534-2fcdd730040d", "start_latitude": 37.761492, "start_longitude": -122.423941, "end_latitude": 37.775393, "end_longitude": -122.417546 }'
