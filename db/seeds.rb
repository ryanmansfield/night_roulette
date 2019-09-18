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
<<<<<<< HEAD
    picture: 'https://images.unsplash.com/photo-1534352211968-8d25dbe0e951?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60'
=======
    venue_type: 'restaurant',
    characteristics: ['vegan', 'shellfish']
>>>>>>> 94c137ef76613de2ee85421bcb3d702c60e7c0d9
)

Venue.create!(
    name: 'Lapa 40',
    location: 'Lapa, Rio de Janeiro',
    price: 3,
    rating: 3,
    hours: '5 am',
<<<<<<< HEAD
    picture: 'https://images.unsplash.com/photo-1485872299829-c673f5194813?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60'
=======
    venue_type: 'restaurant',
    characteristics: ['vegan']
>>>>>>> 94c137ef76613de2ee85421bcb3d702c60e7c0d9
)

Venue.create!(
    name: 'Sugar Loaf',
    location: 'Urca, Rio de Janeiro',
    price: 2,
    rating: 4,
    hours: '7 pm',
<<<<<<< HEAD
    picture: 'https://images.unsplash.com/photo-1519214605650-76a613ee3245?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60'
=======
    venue_type: 'bar',
    characteristics: ['live music']
>>>>>>> 94c137ef76613de2ee85421bcb3d702c60e7c0d9
)

Venue.create!(
    name: 'Sinuca da Bambina',
    location: 'Botafogo, Rio de Janeiro',
    price: 1,
    rating: 2,
    hours: '4 am',
<<<<<<< HEAD
    picture: 'https://images.unsplash.com/photo-1532617149399-3d5f7b95a28b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60'
)

Venue.create!(
    name: 'Bar do Ze',
    location: 'Gloria, Rio de Janeiro',
    price: 2,
    rating: 4,
    hours: '3 am',
    picture: 'https://images.unsplash.com/photo-1543791959-12b3f543282a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60'
)

Venue.create!(
    name: 'Bar do Mineiro',
    location: 'Santa Tereza, Rio de Janeiro',
    price: 1,
    rating: 2,
    hours: '4 am',
    picture: 'https://images.unsplash.com/photo-1511690656952-34342bb7c2f2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60'
)
Venue.create!(
    name: 'Bip Bip',
    location: 'Ipanema, Rio de Janeiro',
    price: 2,
    rating: 3,
    hours: '3 am',
    picture: 'https://images.unsplash.com/photo-1536935338788-846bb9981813?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=986&q=80'
=======
    venue_type: 'nightclub',
    characteristics: []
>>>>>>> 94c137ef76613de2ee85421bcb3d702c60e7c0d9
)

puts ">>> db is seeded with venues"

