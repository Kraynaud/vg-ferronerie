require "open-uri"

puts 'Destroy all database...'

Picture.destroy_all
Realisation.destroy_all
Categorie.destroy_all
User.destroy_all

puts 'Creating user...'

user = User.new({email: "kraynaud@gmail.com", password: "password", admin: true })
user.save

puts "#{User.count} user has been created !"

puts 'Creating some categories...'

file1 = URI.open('https://res.cloudinary.com/dkrtmft3y/image/upload/v1588692233/ZJTfmvCatyPi1N6G5bpEMWih.jpg')
categorie1 = Categorie.new({
  titre: "Verrières",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. "
})
categorie1.photo.attach(io: file1, filename: 'verrieres_cat.jpg', content_type: 'image/jpg')
categorie1.save!

file2 = URI.open('https://res.cloudinary.com/dkrtmft3y/image/upload/v1588691997/yVGW9reoA1Dt2ryaKHWY9MXS.jpg')
categorie2 = Categorie.new({
  titre: "Portails",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. "
})
categorie2.photo.attach(io: file2, filename: 'portails_cat.jpg', content_type: 'image/jpg')
categorie2.save!

file3 = URI.open('https://res.cloudinary.com/dkrtmft3y/image/upload/v1588690539/crETDsi1td4WcnY96gdaCFPx.jpg')
categorie3 = Categorie.new({
  titre: "Pergolas",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. "
})
categorie3.photo.attach(io: file3, filename: 'pergolas_cat.jpg', content_type: 'image/jpg')
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

puts 'Creating some pictures...'

#Pergolas

file4 = URI.open('https://res.cloudinary.com/dkrtmft3y/image/upload/v1588691069/meAEHHC8AfTxEVkcb8LRKDqj.jpg')
picture_per1 = Picture.new({name: 'Pergolas1', realisation_id: realisation7.id})
picture_per1.photo.attach(io: file4, filename: 'pergolas1.jpg', content_type: 'image/jpg')
picture_per1.save!

file5 = URI.open('https://res.cloudinary.com/dkrtmft3y/image/upload/v1588690339/1SfLoVng9srw7x3Dch1ZDmpN.jpg')
picture_per2 = Picture.new({name: 'Pergolas2', realisation_id: realisation8.id})
picture_per2.photo.attach(io: file5, filename: 'pergolas2.jpg', content_type: 'image/jpg')
picture_per2.save!

file6 = URI.open('https://res.cloudinary.com/dkrtmft3y/image/upload/v1588691154/tb1rRazmfuxTZZZEaGGQRssN.png')
picture_per3 = Picture.new({name: 'Pergolas3', realisation_id: realisation9.id})
picture_per3.photo.attach(io: file6, filename: 'pergolas3.png', content_type: 'image/png')
picture_per3.save!

#Verrières

file7 = URI.open('https://res.cloudinary.com/dkrtmft3y/image/upload/v1588846687/20170524_143521_8-201720805-lapeyre-parenthese_dc2us7.jpg')
picture_ver1 = Picture.new({name: 'Verriere1', realisation_id: realisation1.id})
picture_ver1.photo.attach(io: file7, filename: 'verriere1.jpg', content_type: 'image/jpg')
picture_ver1.save!

file8 = URI.open('https://res.cloudinary.com/dkrtmft3y/image/upload/v1588692045/6N7yUyYxdSLk8Qx4KLCJVkWG.jpg')
picture_ver2 = Picture.new({name: 'Verriere2', realisation_id: realisation2.id})
picture_ver2.photo.attach(io: file8, filename: 'verriere2.jpg', content_type: 'image/jpg')
picture_ver2.save!

file9 = URI.open('https://res.cloudinary.com/dkrtmft3y/image/upload/v1588683288/npzqXSc6cMQh7dTW5SAAdwqG.jpg')
picture_ver3 = Picture.new({name: 'Verriere3', realisation_id: realisation3.id})
picture_ver3.photo.attach(io: file9, filename: 'verriere3.jpg', content_type: 'image/jpg')
picture_ver3.save!

#Portails

file10 = URI.open('https://res.cloudinary.com/dkrtmft3y/image/upload/v1588690320/obBrHe7H4vnV8PQBe3sgQ7DE.jpg')
picture_por1 = Picture.new({name: 'Portail1', realisation_id: realisation4.id})
picture_por1.photo.attach(io: file10, filename: 'portail1.jpg', content_type: 'image/jpg')
picture_por1.save!

file11 = URI.open('https://res.cloudinary.com/dkrtmft3y/image/upload/v1588847000/portail-battant-ou-coulissant-a-lames-en-aluminium-celina-011794355-product_maxi_x5xpwz.jpg')
picture_por2 = Picture.new({name: 'Portail2', realisation_id: realisation5.id})
picture_por2.photo.attach(io: file11, filename: 'portail2.jpg', content_type: 'image/jpg')
picture_por2.save!

file12 = URI.open('https://res.cloudinary.com/dkrtmft3y/image/upload/v1588692020/fNpnWsMm3rKBiecJqR8K4UY6.jpg')
picture_por3 = Picture.new({name: 'Portail3', realisation_id: realisation6.id})
picture_por3.photo.attach(io: file12, filename: 'portail3.jpg', content_type: 'image/jpg')
picture_por3.save!

file13 = URI.open('https://res.cloudinary.com/dkrtmft3y/image/upload/v1588691114/FaXsVFRp2M4L8NvT97UwQ7V5.jpg')
picture_per31 = Picture.new({name: 'Pergolas31', realisation_id: realisation9.id})
picture_per31.photo.attach(io: file13, filename: 'pergolas31.jpg', content_type: 'image/jpg')
picture_per31.save!

puts "#{Picture.count} pictures have been created !"
