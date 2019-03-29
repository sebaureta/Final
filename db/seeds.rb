# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  Task.create(
    details: 'Bailar Cueca',
    image: 'cueca.jpg'
  )
  Task.create(
    details: 'Comer Anticucho',
    image: 'anticuchos.jpg'
  )
  Task.create(
    details: 'Encumbrar Volantín',
    image: 'volantin.jpg'
  )
  Task.create(
    details: 'Copmer Empanada',
    image: 'empanada.jpg'
  )
  Task.create(
    details: 'Jugar Rayuela',
    image: 'rayuela.jpg'
  )
  Task.create(
    details: 'Jugar Trompo',
    image: file = File.open(File.join(Rails.root,'app/assets/images/trompo.jpg'))
  )
