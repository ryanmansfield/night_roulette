require 'open-uri'
require 'json'

## Only need fotos when place is picked, then make a new request just for the place of interest!

class GooglePlaces
  def initialize
    # @lat = lat
    # @lon = lon
    # @radius = radius
    # # how to get key from .env
    # @price = price #min ou max??
    # @query = query #predefined query
  end

  def find
    # ## alternativa ??
    # 'https://maps.googleapis.com/maps/api/place/findplacefromtext/json?
    # input=mongolian%20grill
    # &inputtype=textquery'
    
    # ## Other fields
    # '&rankby=distance or 
    # &type=food,establishment,bar,amusement_park,aquarium,art_gallery,cafe,casino,church,hindu_temple,night_club,restaurant
    # &minprice=1,2,3 or 4
    # &maxprice=1,2,3 or 4
    # &fields=photos,formatted_address,name,opening_hours,rating
    # &locationbias=circle:2000@47.6918452,-122.2226413
    # &opennow'
    
    # ## Find a place details
    # 'https://maps.googleapis.com/maps/api/place/details/json?placeid=ChIJrTLr-GyuEmsRBfy61i59si0&key=AIzaSyDpxM_X7FS9duNoQRn6oVknOY1R3Srr3KA'
    
    # ## busca por texto
    # url = 'https://maps.googleapis.com/maps/api/place/textsearch/json?
    # query=123+main+street
    # &location=42.3675294,-71.186966
    # &radius=10000
    # &key=AIzaSyDpxM_X7FS9duNoQRn6oVknOY1R3Srr3KA'

    url = %W[
      https://maps.googleapis.com/maps/api/place/textsearch/json?
      query=123+main+street
      &location=42.3675294,-71.186966
      &radius=10000
      &key=#{ENV['GOOGLE_PLACES_API_KEY']}
    ].join('')

    user_serialized = open(url).read
    result = JSON.parse(user_serialized)
  end
end