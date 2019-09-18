require 'open-uri'
require 'json'

class GooglePlaces
  def initialize
  end

  def find_by_location
    ## busca por texto
    url = 'https://maps.googleapis.com/maps/api/place/textsearch/json?
    query=123+main+street
    &location=42.3675294,-71.186966
    &radius=10000
    &key=AIzaSyDpxM_X7FS9duNoQRn6oVknOY1R3Srr3KA'
    
    ## busca por texto com filtro de campos retornados, coordenadas e raio
    'https://maps.googleapis.com/maps/api/place/findplacefromtext/json?
    input=mongolian%20grill
    &inputtype=textquery
    &fields=photos,formatted_address,name,opening_hours,rating
    &locationbias=circle:2000@47.6918452,-122.2226413 
    &key=YOUR_API_KEY'
  
    ## Other fiels
    '&rankby=distance
    &type=food,establishment,bar,amusement_park,aquarium,art_gallery,cafe,casino,church,hindu_temple,night_club,restaurant
    &minprice=1,2,3 or 4
    &maxprice=1,2,3 or 4
    &opennow'
  
    ## Find a place details
    'https://maps.googleapis.com/maps/api/place/details/json?placeid=ChIJrTLr-GyuEmsRBfy61i59si0&key=AIzaSyDpxM_X7FS9duNoQRn6oVknOY1R3Srr3KA'
  
    ##
      
    result = JSON.parse(open(url).read)
  end

  
end

url = 'https://maps.googleapis.com/maps/api/place/textsearch/json?
query=123+main+street
&location=42.3675294,-71.186966
&radius=10000
&key=AIzaSyDpxM_X7FS9duNoQRn6oVknOY1R3Srr3KA'
user_serialized = open(url).read
result = JSON.parse(user_serialized)

puts GooglePlaces.new.find_by_location

puts url
puts result