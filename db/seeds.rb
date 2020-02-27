# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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