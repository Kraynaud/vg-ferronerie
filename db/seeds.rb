require "open-uri"

puts 'Destroy all database...'

Realisation.destroy_all
Categorie.destroy_all
User.destroy_all

puts 'Creating user...'

user = User.new({email: "kraynaud@gmail.com", password: "password", admin: true })
user.save

puts 'Creating some categories...'

categorie1 = Categorie.new({
  titre: "Verrières",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. "
})
categorie1.save!

categorie2 = Categorie.new({
  titre: "Portails",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. "
})
categorie2.save!

categorie3 = Categorie.new({
  titre: "Pergolas",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. "
})
categorie3.save!

puts "#{Categorie.count} categories have been created !"

puts 'Creating some realisations...'

realisation1 = Realisation.new({
  titre: "Verrière",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. " ,
  lieu: "Aix en Provence",
  user_id: user.id,
  categorie_id: categorie1.id
})
realisation1.save!

realisation2 = Realisation.new({
  titre: "Verrière",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. " ,
  lieu: "Aix en Provence",
  user_id: user.id,
  categorie_id: categorie1.id
})
realisation2.save!

realisation3 = Realisation.new({
  titre: "Verrière",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. " ,
  lieu: "Aix en Provence",
  user_id: user.id,
  categorie_id: categorie1.id
})
realisation3.save!

realisation4 = Realisation.new({
  titre: "Portails",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. " ,
  lieu: "Aix en Provence",
  user_id: user.id,
  categorie_id: categorie2.id
})
realisation4.save!

realisation5 = Realisation.new({
  titre: "Portails",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. " ,
  lieu: "Aix en Provence",
  user_id: user.id,
  categorie_id: categorie2.id
})
realisation5.save!

realisation6 = Realisation.new({
  titre: "Portails",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. " ,
  lieu: "Aix en Provence",
  user_id: user.id,
  categorie_id: categorie2.id
})
realisation6.save!

realisation7 = Realisation.new({
  titre: "Pergolas",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. " ,
  lieu: "Aix en Provence",
  user_id: user.id,
  categorie_id: categorie3.id
})
realisation7.save!

realisation8 = Realisation.new({
  titre: "Pergolas",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. " ,
  lieu: "Aix en Provence",
  user_id: user.id,
  categorie_id: categorie3.id
})
realisation8.save!

realisation9 = Realisation.new({
  titre: "Pergolas",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. " ,
  lieu: "Aix en Provence",
  user_id: user.id,
  categorie_id: categorie3.id
})
realisation9.save!

puts "#{Realisation.count} realisations have been created !"
