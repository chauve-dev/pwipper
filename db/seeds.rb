# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Ut1 = Utilisateur.create(nickname: "Chauve", username: "baldus_maximus", email: "jeantetjoey.pro@gmail.com", password: "123", bio: "Chauve un jour chauve toujours", profil_picture: nil)
Pt1 = Pweep.create(body: "Mon premier pweep", utilisateur_id: Ut1.id)