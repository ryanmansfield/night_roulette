# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Venue.destroy_all
puts "<<< old venues data erased"
#1
Venue.create!(
    name: 'Bar Urca',
    location: '205 Rua Cândido Gaffrée, Urca Rio de Janeiro, 22291-080, Brazil',
    picture: 'https://lh5.googleusercontent.com/p/AF1QipPLgmEhwzn_bYyJ2b5zK4Ndf4GWvGhzY-KzL2uU=w426-h240-k-no',
    venue_type: 'bar'
    cool_facts: ['The food is great', 'Order a caipirinha', 'The views are awesome']
)
#2
Venue.create!(
    name: 'Carioca da Gema',
    location: '79 Avenida Mem de Sá, Centro Rio de Janeiro, 20230-150, Brazil',
    picture: 'https://lh5.googleusercontent.com/p/AF1QipNSDPldJCtSssmglodj9JHQbsoeEQBe1tjczqP1=w548-h240-k-no',
    venue_type: 'bar'
)
#3
Venue.create!(
    name: 'Bar do Mineiro',
    location: '99 Rua Paschoal Carlos Magno, Santa Teresa Rio de Janeiro, 20240-290, Brazil',
    picture: 'https://lh5.googleusercontent.com/p/AF1QipP0ThwOJZMWfgw_lZn8_EjsLY_jUuIcLkX1lL8R=w408-h306-k-no',
    venue_type: 'bar'
)
#4
Venue.create!(
    name: 'Bip Bip',
    location: 'Loja D, 50 Rua Almirante Gonçalves, Copacabana Rio de Janeiro, 22060-040, Brazil',
    picture: 'https://lh5.googleusercontent.com/p/AF1QipPSSFoc5PKXHy_dSe2Eai-SAgT6Koz-nSJfnLb8=w408-h306-k-no',
    venue_type: 'bar'
)
#5
Venue.create!(
    name: 'Hocus Pocus DNA',
    location: 'R. Dezenove de Fevereiro, 186 - Botafogo, Rio de Janeiro - RJ, 22280-030',
    picture: 'https://lh5.googleusercontent.com/p/AF1QipME5jQvoZMdQqMKMT55iZ-jMZdUDz6bcuafvdOG=w408-h725-k-no',
    venue_type: 'bar'
)
#6
Venue.create!(
    name: 'Pavão Azul',
    location: '71 Rua Hilário de Gouvêia, Copacabana Rio de Janeiro, 22040-002, Brazil',
    picture: 'https://images.unsplash.com/photo-1438557068880-c5f474830377?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
    venue_type: 'bar'
)
#7
Venue.create!(
    name: 'Canastra',
    location: 'G, Edifício Paranoá, 42 Rua Jangadeiros, Ipanema Rio de Janeiro, 22420-010, Brazil',
    picture: 'https://images.unsplash.com/photo-1517644493876-7864565e3bf9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
    venue_type: 'bar'
)
#8
Venue.create!(
    name: 'Bar Bracarense',
    location: '85 Rua José Linhares, Leblon Rio de Janeiro, 22430-220, Brazil',
    picture: 'https://images.unsplash.com/photo-1499638673689-79a0b5115d87?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
    venue_type: 'bar'
)
#9
Venue.create!(
    name: 'Bar do Adão',
    location: 'Av. Gomes Freire, 602 - lj, Lapa - RJ, 20031-040',
    picture: 'https://images.unsplash.com/photo-1510626176961-4b57d4fbad03?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
    venue_type: 'bar'
)
#10
Venue.create!(
    name: 'Boteco Belmonte',
    location: 'Praia do Flamengo, 300 - Flamengo, Rio de Janeiro - RJ, 22210-030',
    picture: 'https://images.unsplash.com/photo-1496318447583-f524534e9ce1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
    venue_type: 'bar'
)

puts ">>> bars seeded"
#1
Venue.create!(
    name: 'Restaurante Cervantes',
    location: 'Av. Prado Júnior, 335 - Loja B - Copacabana, Rio de Janeiro - RJ, 22011-001',
    picture: 'https://images.unsplash.com/photo-1467003909585-2f8a72700288?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
    venue_type: 'restaurant'
)
#2
Venue.create!(
    name: 'Café Lamas',
    location: 'R. Marquês de Abrantes, 18A - Flamengo, Rio de Janeiro - RJ, 22030-061',
    picture: 'https://images.unsplash.com/photo-1505826759037-406b40feb4cd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
    venue_type: 'restaurant'
)
#3
Venue.create!(
    name: 'Amir',
    location: '55 Rua Ronald de Carvalho, Copacabana Rio de Janeiro, 22021-020, Brazil',
    picture: 'https://images.unsplash.com/photo-1466978913421-dad2ebd01d17?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
    venue_type: 'restaurant'
)
#4
Venue.create!(
    name: 'Adega Perola',
    location: 'R. Siqueira Campos, 138 – Copacabana, Rio de Janeiro, Brazil',
    picture: 'https://images.unsplash.com/photo-1432139509613-5c4255815697?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
    venue_type: 'restaurant'
)
#5
Venue.create!(
    name: 'Os Imortais',
    location: 'R. Ronald de Carvalho, 147 - Copacabana, Rio de Janeiro - RJ, 22021-020',
    picture: 'https://images.unsplash.com/photo-1505253716362-afaea1d3d1af?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
    venue_type: 'restaurant'
)
#6
Venue.create!(
    name: 'Angu do Gomes',
    location: '75 Rua Sacadura Cabral, Saúde Rio de Janeiro, 20081-261, Brazil',
    picture: 'https://images.unsplash.com/photo-1432139555190-58524dae6a55?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
    venue_type: 'restaurant'
)
#7
Venue.create!(
    name: 'Fogo de Chão',
    location: 'Avenida Reporter Nestor Moreira, Botafogo Rio de Janeiro, 22290-210, Brazil',
    picture: 'https://images.unsplash.com/photo-1504544750208-dc0358e63f7f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
    venue_type: 'restaurant'
)
#8
Venue.create!(
    name: 'Julius Brasserie',
    location: 'Av. Portugal, 986 - lj.d - Urca, Rio de Janeiro - RJ, 22296-050',
    picture: 'https://images.unsplash.com/photo-1476224203421-9ac39bcb3327?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
    venue_type: 'restaurant'
)
#9
Venue.create!(
    name: 'Stuzzi',
    location: '45 Rua Dias Ferreira, Leblon Rio de Janeiro, 22431-050, Brazil',
    picture: 'https://images.unsplash.com/photo-1414235077428-338989a2e8c0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
    venue_type: 'restaurant'
)
#10
Venue.create!(
    name: 'Frontera',
    location: '128 Rua Visconde de Pirajá, Ipanema Rio de Janeiro, 22410-002, Brazil',
    picture: 'https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
    venue_type: 'restaurant'
)

puts ">>> restaurants seeded"
#1
Venue.create!(
    name: 'Lapa 40',
    location: 'R. Riachuelo, 97 - Centro, Rio de Janeiro - RJ, 20230-010',
    picture: 'https://images.unsplash.com/photo-1544785316-6e58aed68a50?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
    venue_type: 'nightclub'
)
#2
Venue.create!(
    name: 'The Maze',
    location: 'casa 66, 414 Rua Tavares Bastos, Catete Rio de Janeiro, 22221-030, Brazil',
    picture: 'https://images.unsplash.com/photo-1525013895693-a4777efde80a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
    venue_type: 'nightclub'
)
#3
Venue.create!(
    name: 'Sarreufa Club',
    location: 'R. Bambina, 141 - Botafogo, Rio de Janeiro - RJ, 22251-050',
    picture: 'https://images.unsplash.com/photo-1536758305353-e47b72c06853?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
    venue_type: 'nightclub'
)
#4
Venue.create!(
    name: 'Leaviano',
    location: 'Av. Mem de Sá, 47 – Lapa, Rio de Janeiro',
    picture: 'https://images.unsplash.com/photo-1545128485-c400e7702796?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
    venue_type: 'nightclub'
)
#5
Venue.create!(
    name: 'Fosfobox',
    location: 'loja 22a, 143 Rua Siqueira Campos, Copacabana Rio de Janeiro, 22031-070, Brazil',
    picture: 'https://images.unsplash.com/photo-1514525253161-7a46d19cd819?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
    venue_type: 'nightclub'
)
#6
Venue.create!(
    name: 'Bar Bukowski',
    location: 'R. Álvaro Ramos, 270 – Botafogo, Rio de Janeiro',
    picture: 'https://images.unsplash.com/photo-1485889397316-8393dd065127?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
    venue_type: 'nightclub'
)
#7
Venue.create!(
    name: 'Casa Rosa',
    location: '550 Rua Alice, Laranjeiras Rio de Janeiro, 22241-020, Brazil',
    picture: 'https://images.unsplash.com/photo-1558317751-bc3ed6f85f72?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
    venue_type: 'nightclub'
)
#8
Venue.create!(
    name: 'New Mariuzinn',
    location: 'Avenida Nossa Senhora de Copacabana, 435, RJ, Brazil',
    picture: 'https://images.unsplash.com/photo-1564282676901-7cc96c4c192b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
    venue_type: 'nightclub'
)
#9
Venue.create!(
    name: 'Rio Scenarium',
    location: 'R. do Lavradio, 20 – Centro, Rio de Janeiro',
    picture: 'https://images.unsplash.com/photo-1553132717-4de9f7d12389?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
    venue_type: 'nightclub'
)
#10
Venue.create!(
    name: 'Teatro Odisséia',
    location: 'Av. Mem de Sá, 66 – Centro, Rio de Janeiro',
    picture: 'https://images.unsplash.com/photo-1550977186-c4582f219a4c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
    venue_type: 'nightclub'
)

puts ">>> nightclubs seeded"
