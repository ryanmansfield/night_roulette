# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Venue.destroy_all
puts "<<< old venues data erased"

Venue.create!(
    name: 'Cervantes',
    location: 'Copacabana, Rio de Janeiro',
    price: 4,
    rating: 5,
    hours: '3 am',
    venue_type: 'restaurant',
    characteristics: ['vegan', 'shellfish']
)

Venue.create!(
    name: 'Lapa 40',
    location: 'Lapa, Rio de Janeiro',
    price: 3,
    rating: 3,
    hours: '5 am',
    venue_type: 'restaurant',
    characteristics: ['vegan']
)

Venue.create!(
    name: 'Sugar Loaf',
    location: 'Urca, Rio de Janeiro',
    price: 2,
    rating: 4,
    hours: '7 pm',
    venue_type: 'bar',
    characteristics: ['live music']
)

Venue.create!(
    name: 'Sinuca da Bambina',
    location: 'Botafogo, Rio de Janeiro',
    price: 1,
    rating: 2,
    hours: '4 am',
    venue_type: 'nightclub',
    characteristics: []
)

puts ">>> db is seeded with venues"

