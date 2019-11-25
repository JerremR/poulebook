# require 'json'
# require 'open-uri'

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
    email: 'igor@patu.com',
    password: 'password')
url_igor      = 'https://www.semyonbychkov.com/wordpress/wp-content/uploads/2013/08/Semyon-Bychkov_photo-credit-Umberto-Nicoletti-900x650.jpg'
igor.remote_avatar_url = url_igor
igor.save!

katarina = User.new(
  fullname: "Katarina",
  email: 'katarina@gmail.com',
  password: 'password')
url_katarina = 'https://images.unsplash.com/photo-1572014535939-95c24cd76d23'
katarina.remote_avatar_url = url_katarina
katarina.save!

brandon = User.new(
  fullname: 'Brandon - Eleveur BG du 44',
  email: 'brandon@gmail.com',
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
  name: 'Pierre',
  birthdate: Date.strptime("15/05/1980", "%d/%m/%Y"),
  color: 'pink',
  species: 'Brahma',
  gender: 'male',
  price: 4.9,
  presentation: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis cu, aperiam vel quod omnis illum laborum officia quisquam, est.',
  address: 'Rennes'
  )
pierre_photo_url = 'http://taxidermiste.net/wp-content/uploads/2015/12/coq-a-poil.jpg'
pierre.remote_photo_url = pierre_photo_url
pierre.owner = brandon
pierre.save!

puts "#{Chicken.count} chickens imported."
puts 'End chickens'

puts '-> Start bookings'

booking = Booking.new(
  status: 'pending',
  start_date: Date.strptime("28/12/2019", "%d/%m/%Y"),
  end_date: Date.strptime("01/01/2020", "%d/%m/%Y"),
  total_price: 19.6)
booking.user = igor
booking.chicken = pierre
booking.save!

puts "#{Booking.count} bookings imported."
puts 'End booking'

puts 'End seeds'
