# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

movie_genres = ["action", "romance", "thriller", "sports", "comedy", "Sci-fi", "Horror"]

14.times do
  User.create(
    name: Faker::FunnyName.unique.name, 
    user_name: Faker::Games::Pokemon.unique.name, 
    age: rand(1..100), 
    slogan: Faker::TvShows::GameOfThrones.unique.quote
  )
end

10.times do
  Movie.create(
    title: Faker::Movie.unique.title,
    release_date: Faker::Number.unique.number(digits: 4),
    genre: movie_genres.sample
  )
end

20.times do
  WatchList.create(user_id: User.all.sample.id, movie_id: Movie.all.sample.id)
end

puts "data seeded"