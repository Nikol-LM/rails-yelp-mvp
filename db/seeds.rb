# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all

puts "creating resto"

restaurant_attributes = {
  name: 'Les bouteilles',
  address: 'Nantes',
  category: 'french',
  phone_number: '0168252486'
},
{
  name: 'Pitaya',
  address: 'Paris',
  category: 'chinese',
  phone_number: '0198764387'
},
{
  name: 'Les frites',
  address: 'Bordeaux',
  category: 'belgian',
  phone_number: '0466847950'
},
{
  name: 'Nota Bene',
  address: 'Nantes',
  category: 'italian',
  phone_number: '0288553377'
},
{
  name: 'Paku Paku',
  address: 'Paris',
  category: 'japanese',
  phone_number: '0288553377'
}

Restaurant.create!(restaurant_attributes)
puts 'Restaurants created!'
