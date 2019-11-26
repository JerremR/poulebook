puts 'Start seeds'

Booking.destroy_all
puts 'Booking table dropped'
Chicken.destroy_all
puts 'Chicken table dropped'
User.destroy_all
puts 'User table dropped'


puts '-> Start users'
igor = User.new(
    fullname: "Igor Patulachi",
    email: 'igor@example.com',
    password: 'password')
url_igor      = 'https://www.semyonbychkov.com/wordpress/wp-content/uploads/2013/08/Semyon-Bychkov_photo-credit-Umberto-Nicoletti-900x650.jpg'
igor.remote_avatar_url = url_igor
igor.save!

katarina = User.new(
  fullname: "Katarina",
  email: 'katarina@example.com',
  password: 'password')
url_katarina = 'https://images.unsplash.com/photo-1572014535939-95c24cd76d23'
katarina.remote_avatar_url = url_katarina
katarina.save!

brandon = User.new(
  fullname: 'Brandon - Eleveur BG du 44',
  email: 'brandon@example.com',
  password: 'password')
url_brandon = 'http://www.le-chapon-fin.fr/images/eleveur-poule_1.jpg'
brandon.remote_avatar_url = url_brandon
brandon.save!

puts "#{User.count} users imported."
puts 'End users'


puts '-> Start chickens'
nicoF = Chicken.new(
    name: 'Nico F',
    birthdate: Date.strptime("28/12/1987", "%d/%m/%Y"),
    color: 'black',
    species: 'Ayam Cemani',
    gender: 'male',
    price: 5.5,
    presentation: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis culpa quia modi quaerat porro debitis suscipit atque aut praesentium quos nam, aperiam vel quod omnis illum laborum officia quisquam, est.',
    address: 'Nantes'
    )
nicoF_photo_url = 'https://img.buzzarena.com/2017/02/ayam-cemani.jpg'
nicoF.remote_photo_url = nicoF_photo_url
nicoF.owner = katarina
nicoF.save!

cecile = Chicken.new(
    name: 'Cecile',
    birthdate: Date.strptime("12/05/1989", "%d/%m/%Y"),
    color: 'white',
    species: 'Hollandaise Huppée',
    gender: 'female',
    price: 6.5,
    presentation: 'Suscipit atque aut praesentium quos nam, aperiam vel quod omnis illum laborum officia quisquam, est.',
    address: 'Amsterdam'
    )
cecile_photo_url = 'https://poulesclub-e5b0.kxcdn.com/wp-content/uploads/2019/04/race-hollandaise-huppe.jpg'
cecile.remote_photo_url = cecile_photo_url
cecile.owner = katarina
cecile.save!

pierre = Chicken.new(
  name: 'Pierre F',
  birthdate: Date.strptime("15/05/1980", "%d/%m/%Y"),
  color: 'pink',
  species: 'Brahma',
  gender: 'male',
  price: 4.9,
  presentation: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis cu, aperiam vel quod omnis illum laborum officia quisquam, est.',
  address: 'Rennes'
  )
pierre_photo_url = 'https://s.yimg.com/tr/i/1c3a523dda264737827b07c28bae9a2f_A.jpeg'
pierre.remote_photo_url = pierre_photo_url
pierre.owner = brandon
pierre.save!

guillaume = Chicken.new(
  name: 'Guillaume',
  birthdate: Date.strptime("15/04/1983", "%d/%m/%Y"),
  color: 'Gray',
  species: 'Janzé',
  gender: 'male',
  price: 3.2,
  presentation: 'Facilis cu, aperiam vel quod omnis illum laborum offici est.',
  address: 'Rennes'
  )

guillaume_photo_url = 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Noire_Janz%C3%A9_Bintinais.JPG/1024px-Noire_Janz%C3%A9_Bintinais.JPG'
guillaume.remote_photo_url = guillaume_photo_url
guillaume.owner = brandon
guillaume.save!

nathan = Chicken.new(
  name: 'Nathan',
  birthdate: Date.strptime("15/09/2000", "%d/%m/%Y"),
  color: 'Gray',
  species: 'Poule à lunette',
  gender: 'male',
  price: 8.2,
  presentation: 'Facilis cu, aperiam vel quod omnis illum laborum offici est.',
  address: 'Perpignan'
  )
nathan_photo_url = 'http://image.blingee.com/images19/content/output/000/000/000/7c8/805410520_1672801.gif'
nathan.remote_photo_url = nathan_photo_url
nathan.owner = brandon
nathan.save!

thibault = Chicken.new(
  name: 'Thibault',
  birthdate: Date.strptime("15/09/1985", "%d/%m/%Y"),
  color: 'Red',
  species: 'White-Leghorns',
  gender: 'male',
  price: 5.6,
  presentation: 'Facilis cu, aperiam vel quod omnis illum laborum offici est.',
  address: 'Toulouse'
  )
thibault_photo_url = 'http://knowledgebase.lookseek.com/images/animals/birds/poultry/large-poultry/White-Leghorns-Chicken.JPG'
thibault.remote_photo_url = thibault_photo_url
thibault.owner = brandon
thibault.save!

pierreT = Chicken.new(
  name: 'Pierre T',
  birthdate: Date.strptime("15/09/1985", "%d/%m/%Y"),
  color: 'Red',
  species: 'White-Leghorns',
  gender: 'male',
  price: 5.6,
  presentation: 'Facilis cu, aperiam vel quod omnis illum laborum offici est.',
  address: 'Paris'
  )
pierreT_photo_url = 'http://knowledgebase.lookseek.com/images/animals/birds/poultry/large-poultry/White-Leghorns-Chicken.JPG'
pierreT.remote_photo_url = pierreT_photo_url
pierreT.owner = katarina
pierreT.save!

hugo = Chicken.new(
  name: 'Hugo',
  birthdate: Date.strptime("15/09/1986", "%d/%m/%Y"),
  color: 'White',
  species: 'Courtes-pattes',
  gender: 'male',
  price: 5.6,
  presentation: 'Facilis cu, aperiam vel quod omnis illum laborum offici est.',
  address: 'Nantes'
  )
hugo_photo_url = 'https://i.pinimg.com/originals/ca/81/0d/ca810d5550d09379a100e4e645826da1.jpg'
hugo.remote_photo_url = hugo_photo_url
hugo.owner = katarina
hugo.save!

julien = Chicken.new(
  name: 'Julien',
  birthdate: Date.strptime("15/09/1989", "%d/%m/%Y"),
  color: 'Brown',
  species: 'Bourbonnaise',
  gender: 'male',
  price: 5.6,
  presentation: 'Facilis cu, aperiam vel quod omnis illum laborum offici est.',
  address: 'Nantes'
  )
julien_photo_url = 'https://www.papercards.com/images/avanti/AV-202346-hen-wears-swimsuit-gift-enclosure-card.jpg'
julien.remote_photo_url = julien_photo_url
julien.owner = katarina
julien.save!


melanie = Chicken.new(
  name: 'Mélanie',
  birthdate: Date.strptime("15/09/1989", "%d/%m/%Y"),
  color: 'Brown',
  species: 'Bourbonnaise',
  gender: 'female',
  price: 5.6,
  presentation: 'Facilis cu, aperiam vel quod omnis illum laborum offici est.',
  address: 'Nantes'
  )
melanie_photo_url = 'https://upload.wikimedia.org/wikipedia/commons/d/dd/Poule_Soie_bleue.png'
melanie.remote_photo_url = melanie_photo_url
melanie.owner = katarina
melanie.save!


puts "#{Chicken.count} chickens imported."
puts 'End chickens'

puts '-> Start bookings'

booking1 = Booking.new(
  status: 'rejected',
  start_date: Date.strptime("28/12/2019", "%d/%m/%Y"),
  end_date: Date.strptime("01/01/2020", "%d/%m/%Y"),
  total_price: 19.6)
booking1.user = igor
booking1.chicken = pierre
booking1.save!

booking2 = Booking.new(
  status: 'pending',
  start_date: Date.strptime("02/02/2020", "%d/%m/%Y"),
  end_date: Date.strptime("01/03/2020", "%d/%m/%Y"),
  total_price: 152.6)
booking2.user = igor
booking2.chicken = pierre
booking2.save!

booking3 = Booking.new(
  status: 'confirmed',
  start_date: Date.strptime("24/12/2019", "%d/%m/%Y"),
  end_date: Date.strptime("25/12/2019", "%d/%m/%Y"),
  total_price: 45.2)
booking3.user = igor
booking3.chicken = melanie
booking3.save!

booking4 = Booking.new(
  status: 'pending',
  start_date: Date.strptime("24/12/2019", "%d/%m/%Y"),
  end_date: Date.strptime("25/12/2019", "%d/%m/%Y"),
  total_price: 8.6)
booking4.user = katarina
booking4.chicken = thibault
booking4.save!

booking5 = Booking.new(
  status: 'pending',
  start_date: Date.strptime("24/12/2019", "%d/%m/%Y"),
  end_date: Date.strptime("25/12/2019", "%d/%m/%Y"),
  total_price: 8.6)
booking5.user = brandon
booking5.chicken = nicoF
booking5.save!

booking6 = Booking.new(
  status: 'pending',
  start_date: Date.strptime("24/12/2019", "%d/%m/%Y"),
  end_date: Date.strptime("25/12/2019", "%d/%m/%Y"),
  total_price: 8.6)
booking6.user = igor
booking6.chicken = guillaume
booking6.save!



puts "#{Booking.count} bookings imported."
puts 'End booking'

puts 'End seeds'
