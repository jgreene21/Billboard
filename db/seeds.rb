# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
list1 = List.create(name: "Hot 100")
  100.times do |i|
    song = Faker::Music.album 
    list1.songs.create(name: "#{song}")
list2 = List.create(name: "Top Pop")
  100.times do |i|
    song = Faker::Music.album 
    list2.songs.create(name: "#{song}")
list3 = List.create(name: "Social 50")
  50.times do |i|  
    song = Faker::Music.album 
    list3.songs.create(name: "#{song}")
    end
  end
end  

require 'faker'

100.times do |i|
  name = Faker::Name.first_name
  artist = Artist.create(name: name)
  3.times do |j|
    song = Faker::Music.album
    artist.songs.create(name: "#{song}")
  end
end

songs = Song.all.where(list_id: nil)
puts "songs with no list #{songs.size}"