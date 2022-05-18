# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', phone_number: '0123456789', category: 'chinese' }
pizza = { name: 'Pizza', address: '56A Shore High St, London E1 6PQ', phone_number: '0123456789', category: 'italian' }
surpriz = { name: 'Surpriz', address: 'rue Oberkampf', phone_number: '0123456789', category: 'belgian' }
brasserie = { name: 'Brasserie', address: 'rue du banquier', phone_number: '0123456789', category: 'french' }
sushi = { name: 'Sushi', address: 'rue de Tokyo', phone_number: '0123456789', category: 'japanese' }

[dishoom, pizza, surpriz, brasserie, sushi].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
