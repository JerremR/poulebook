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
  fullname: 'Brandon',
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
    color: 'Noire',
    species: 'Hollandaise bouclée',
    gender: 'Mâle',
    price: 5.5,
    presentation: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis culpa quia modi quaerat porro debitis suscipit atque aut praesentium quos nam, aperiam vel quod omnis illum laborum officia quisquam, est.',
    address: '20 rue franklin, Nantes'
    )
nicoF_photo_url = 'https://img.buzzarena.com/2017/02/ayam-cemani.jpg'
nicoF.remote_photo_url = nicoF_photo_url
nicoF.owner = katarina
nicoF.save!
puts '---- Nico saved'
sleep(2)

cecile = Chicken.new(
    name: 'Cecile',
    color: 'Blanche',
    species: 'Hollandaise Huppée',
    gender: 'Femelle',
    price: 6.5,
    presentation: 'Suscipit atque aut praesentium quos nam, aperiam vel quod omnis illum laborum officia quisquam, est.',
    address: '30 rue Franklin, Nantes'
    )
cecile_photo_url = 'https://poulesclub-e5b0.kxcdn.com/wp-content/uploads/2019/04/race-hollandaise-huppe.jpg'
cecile.remote_photo_url = cecile_photo_url
cecile.owner = katarina
cecile.save!
puts '---- Cecile saved'
sleep(2)

pierre = Chicken.new(
  name: 'Pierre F',
  color: 'Sans poil',
  species: 'Nantaise à poil ras',
  gender: 'Mâle',
  price: 4.9,
  presentation: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis cu, aperiam vel quod omnis illum laborum officia quisquam, est.',
  address: '17 Boulevard de la fraternité, Nantes'
  )
pierre_photo_url = 'https://s.yimg.com/tr/i/1c3a523dda264737827b07c28bae9a2f_A.jpeg'
pierre.remote_photo_url = pierre_photo_url
pierre.owner = brandon
pierre.save!
puts '---- Pierre saved'
sleep(2)

guillaume = Chicken.new(
  name: 'Guillaume',
  color: 'Noire',
  species: 'Nantaise à rayures',
  gender: 'Mâle',
  price: 3.2,
  presentation: 'Facilis cu, aperiam vel quod omnis illum laborum offici est.',
  address: 'Rue du Mottay, Sainte Luce sur Loire'
  )

guillaume_photo_url = 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Noire_Janz%C3%A9_Bintinais.JPG/1024px-Noire_Janz%C3%A9_Bintinais.JPG'
guillaume.remote_photo_url = guillaume_photo_url
guillaume.owner = brandon
guillaume.save!
puts '---- Guillaume saved'
sleep(2)

nathan = Chicken.new(
  name: 'Nathan',
  color: 'Rousse',
  species: 'Nantaise à lunette',
  gender: 'Mâle',
  price: 8.2,
  presentation: 'Facilis cu, aperiam vel quod omnis illum laborum offici est.',
  address: 'Rue du Général de Gaulle, Saint-Sébastien-sur-Loire'
  )
nathan_photo_url = 'http://image.blingee.com/images19/content/output/000/000/000/7c8/805410520_1672801.gif'
nathan.remote_photo_url = nathan_photo_url
nathan.owner = brandon
nathan.save!
puts '---- Nathan saved'
sleep(2)

thibault = Chicken.new(
  name: 'Thibault',
  color: 'Blanche',
  species: 'Nantaise stylée',
  gender: 'Mâle',
  price: 5.6,
  presentation: 'Facilis cu, aperiam vel quod omnis illum laborum offici est.',
  address: 'Tour de Bretagne, Nantes'
  )
thibault_photo_url = 'http://knowledgebase.lookseek.com/images/animals/birds/poultry/large-poultry/White-Leghorns-Chicken.JPG'
thibault.remote_photo_url = thibault_photo_url
thibault.owner = brandon
thibault.save!
puts '---- Thibault saved'
sleep(2)

pierreT = Chicken.new(
  name: 'Pierre T',
  color: 'Noire',
  species: 'Nantaise punk',
  gender: 'Mâle',
  price: 5.6,
  presentation: 'Facilis cu, aperiam vel quod omnis illum laborum offici est.',
  address: 'Boulevard Benoni Goullin, Nantes'
  )
pierreT_photo_url = 'https://i.servimg.com/u/f46/11/46/89/73/pict0310.jpg'
pierreT.remote_photo_url = pierreT_photo_url
pierreT.owner = katarina
pierreT.save!
puts '---- Pierre T saved'
sleep(2)

hugo = Chicken.new(
  name: 'Hugo',
  color: 'Blanche',
  species: 'Nantaise à Courtes-pattes',
  gender: 'Mâle',
  price: 5.6,
  presentation: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod animi, dignissimos nulla sunt. Aperiam dicta cupiditate veritatis natus magni dolores in aut placeat porro doloremque dolore incidunt ad, est eaque? Temporibus aperiam illum, deserunt rem adipisci rerum quod vel cupiditate eos quasi repellat, dicta ut ipsam voluptate nihil quas expedita iste culpa molestiae maxime cum laborum error quam obcaecati dolores? Quia harum impedit laborum tempora necessitatibus, voluptatum labore eum nobis iste debitis expedita, deleniti alias a asperiores, nihil vero inventore! Earum, debitis voluptate neque nobis eos laudantium reprehenderit recusandae blanditiis. Voluptates culpa quos voluptas eveniet rerum labore repellat consectetur placeat impedit itaque ea ratione, natus voluptate illo maiores nulla, odio perspiciatis blanditiis magni suscipit molestiae vero doloribus. Soluta quam, quis. Facilis minima a rem quis, sed nostrum nobis totam cupiditate molestias optio! Deleniti illo accusamus explicabo quo laudantium optio iste doloribus asperiores cum a fugit, quam impedit perspiciatis maiores soluta?.',
  address: 'La pelousière, Saint Herblain'
  )
hugo_photo_url = 'https://i.pinimg.com/originals/ca/81/0d/ca810d5550d09379a100e4e645826da1.jpg'
hugo.remote_photo_url = hugo_photo_url
hugo.owner = brandon
hugo.save!
puts '---- Hugo saved'
sleep(2)

julien = Chicken.new(
  name: 'Julien',
  color: 'Brown',
  species: 'Jeune Nantaise',
  gender: 'Mâle',
  price: 5.6,
  presentation: 'Facilis cu, aperiam vel quod omnis illum laborum offici est.',
  address: 'Boulevard Jean Moulin, Nantes'
  )
julien_photo_url = 'https://www.papercards.com/images/avanti/AV-202346-hen-wears-swimsuit-gift-enclosure-card.jpg'
julien.remote_photo_url = julien_photo_url
julien.owner = brandon
julien.save!
puts '---- Julien saved'
sleep(2)


melanie = Chicken.new(
  name: 'Mélanie',
  color: 'Rousse',
  species: 'Nantaise à long poils',
  gender: 'Femelle',
  price: 5.6,
  presentation: 'Facilis cu, aperiam vel quod omnis illum laborum offici est.',
  address: 'Nantes'
  )
melanie_photo_url = 'https://upload.wikimedia.org/wikipedia/commons/d/dd/Poule_Soie_bleue.png'
melanie.remote_photo_url = melanie_photo_url
melanie.owner = katarina
melanie.save!
puts '---- Mélanie saved'


puts "#{Chicken.count} chickens imported."
puts 'End chickens'

puts '-> Start bookings'

booking1 = Booking.new(
  status: 'Refusé',
  start_date: Date.strptime("28/12/2019", "%d/%m/%Y"),
  end_date: Date.strptime("01/01/2020", "%d/%m/%Y"),
  total_price: 19.6)
booking1.user = igor
booking1.chicken = pierre
booking1.save!

booking2 = Booking.new(
  status: 'En attente',
  start_date: Date.strptime("02/02/2020", "%d/%m/%Y"),
  end_date: Date.strptime("01/03/2020", "%d/%m/%Y"),
  total_price: 152.6)
booking2.user = igor
booking2.chicken = pierre
booking2.save!

booking3 = Booking.new(
  status: 'Confirmé',
  start_date: Date.strptime("24/12/2019", "%d/%m/%Y"),
  end_date: Date.strptime("25/12/2019", "%d/%m/%Y"),
  total_price: 45.2)
booking3.user = igor
booking3.chicken = melanie
booking3.save!

booking4 = Booking.new(
  status: 'En attente',
  start_date: Date.strptime("24/12/2019", "%d/%m/%Y"),
  end_date: Date.strptime("25/12/2019", "%d/%m/%Y"),
  total_price: 8.6)
booking4.user = katarina
booking4.chicken = thibault
booking4.save!

booking5 = Booking.new(
  status: 'En attente',
  start_date: Date.strptime("24/12/2019", "%d/%m/%Y"),
  end_date: Date.strptime("25/12/2019", "%d/%m/%Y"),
  total_price: 8.6)
booking5.user = brandon
booking5.chicken = nicoF
booking5.save!

booking6 = Booking.new(
  status: 'En attente',
  start_date: Date.strptime("24/12/2019", "%d/%m/%Y"),
  end_date: Date.strptime("25/12/2019", "%d/%m/%Y"),
  total_price: 8.6)
booking6.user = igor
booking6.chicken = guillaume
booking6.save!

booking7 = Booking.new(
  status: 'Confirmé',
  start_date: Date.strptime("01/12/2019", "%d/%m/%Y"),
  end_date: Date.strptime("10/12/2019", "%d/%m/%Y"),
  total_price: 35.2)
booking7.user = katarina
booking7.chicken = hugo
booking7.save!

booking8 = Booking.new(
  status: 'En attente',
  start_date: Date.strptime("24/12/2019", "%d/%m/%Y"),
  end_date: Date.strptime("25/12/2019", "%d/%m/%Y"),
  total_price: 8.6)
booking8.user = katarina
booking8.chicken = julien
booking8.save!


puts "#{Booking.count} bookings imported."
puts 'End booking'

puts 'End seeds'
