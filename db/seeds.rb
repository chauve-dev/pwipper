# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Ut1 = Utilisateur.create(nickname: "Chauve",
                         username: "baldus_maximus",
                         email: "jeantetjoey.pro@gmail.com",
                         password: "123",
                         bio: "Chauve un jour chauve toujours",
                         profil_picture: nil)
Ut1.avatar.attach(io: File.open('db/img_seed/ppchauve.jpg'), filename: 'ppchauve.jpg')

Ut2 = Utilisateur.create(nickname: "era",
                         username: "era_dication",
                         email: "era@gmail.com",
                         password: "123",
                         bio: "Pas contente",
                         profil_picture: nil)
Ut2.avatar.attach(io: File.open('db/img_seed/era.png'), filename: 'era.png')

Ut3 = Utilisateur.create(nickname: "Solarius",
                         username: "gre_forever",
                         email: "solarius@gmail.com",
                         password: "123",
                         bio: "J'aime les pâtes",
                         profil_picture: nil)
Ut3.avatar.attach(io: File.open('db/img_seed/solarius.jpg'), filename: 'solarius.jpg')

Pt1 = Pweep.create(body: "Mon premier pweep", utilisateur_id: Ut1.id)