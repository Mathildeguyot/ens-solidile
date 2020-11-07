# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Commerce.destroy_all
Owner.destroy_all


owner1 = Owner.new(
  pseudo: "Mathilde Guyot",
  description: "Mathilde vient de lancer sa marque de vêtements cousus mains après avoir fait une école de commerce."
)
owner1.save

commerce1 = Commerce.new(
  name: "Margot & Cie",
  description: "Situé à Palais, je vends toutes sortes d'objets de décoration. Idéal pour faire vos cadeaux de Noël !!!",
  tag: "décoration",
  tel: "0625435678",
  mail: "choubidou@gmail.com",
  address: "9 rue Joseph Le Brix, 56360 Le Palais",
  website: "solidile.fr",
  payment: "click & collect",
  owner: owner1
)
commerce1.save


owner2 = Owner.new(
  pseudo: "Mathilde Guyot",
  description: "Mathilde vient de lancer sa marque de vêtements cousus mains après avoir fait une école de commerce."
)
owner2.save

commerce2 = Commerce.new(
  name: "Margot & Cie",
  description: "Situé à Palais, je vends toutes sortes d'objets de décoration. Idéal pour faire vos cadeaux de Noël !!!",
  tag: "décoration",
  tel: "0625435678",
  mail: "choubidou@gmail.com",
  address: "9 rue Joseph Le Brix, 56360 Le Palais",
  website: "solidile.fr",
  payment: "click & collect",
  owner: owner2
)
commerce2.save



owner3 = Owner.new(
  pseudo: "Mathilde Guyot",
  description: "Mathilde vient de lancer sa marque de vêtements cousus mains après avoir fait une école de commerce."
)
owner3.save

commerce3 = Commerce.new(
  name: "Margot & Cie",
  description: "Situé à Palais, je vends toutes sortes d'objets de décoration. Idéal pour faire vos cadeaux de Noël !!!",
  tag: "décoration",
  tel: "0625435678",
  mail: "choubidou@gmail.com",
  address: "9 rue Joseph Le Brix, 56360 Le Palais",
  website: "solidile.fr",
  payment: "click & collect",
  owner: owner3
)
commerce3.save
