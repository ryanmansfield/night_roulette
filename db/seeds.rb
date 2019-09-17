# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all
User.destroy_all
Venue.destroy_all
puts "<<< old venues data erased"

Venue.create!(
    name: 'Cervantes',
    location: 'Copacabana, Rio de Janeiro',
    price: 4,
    rating: 5,
    hours: '3 am'
)

Venue.create!(
    name: 'Lapa 40',
    location: 'Lapa, Rio de Janeiro',
    price: 3,
    rating: 3,
    hours: '5 am'
)

Venue.create!(
    name: 'Sugar Loaf',
    location: 'Urca, Rio de Janeiro',
    price: 2,
    rating: 4,
    hours: '7 pm'
)

Venue.create!(
    name: 'Sinuca da Bambina',
    location: 'Botafogo, Rio de Janeiro',
    price: 1,
    rating: 2,
    hours: '4 am'
)

puts ">>> db is seeded with venues"

User.create!(
  name: 'Diana',
  email: 'diana@gmail.com',
  password: '12345678'
).bookings.create!(
  venue: Venue.first
)
