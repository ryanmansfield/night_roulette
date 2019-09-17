# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Venue.destroy_all

Venue.create!(name: 'Cervantes', location: 'Copacabana, Rio de Janeiro')
Venue.create!(name: 'Lapa 40', location: 'Lapa, Rio de Janeiro')
Venue.create!(name: 'Sugar Loaf', location: 'Urca, Rio de Janeiro')
Venue.create!(name: 'Sinuca da Bambina', location: 'Botafogo, Rio de Janeiro')