require "open-uri"

puts 'Destroy all database...'

Picture.destroy_all
Realisation.destroy_all
Categorie.destroy_all
User.destroy_all


