# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"


Commerce.destroy_all
Owner.destroy_all


#MARGOT ET COMPAGNIE

owner1 = Owner.new(
  pseudo: "Martine Lalouse",
  description: ""
)
owner1.save

commerce1 = Commerce.new(
  name: "Margot et Compagnie",
  description: "Boutique créée en 2012, ouverte à l'année, et spécialisée en Arts de la Table, décoration, linge de maison, cadeaux et souvenirs.",
  tag: "décoration",
  tel: "06.08.36.88.79",
  mail: "lalouse.martine@orange.fr",
  address: "9 rue de l'Eglise, 56360 Le Palais",
  website: "https://www.facebook.com/pages/category/Gift-Shop/Margot-et-Compagnie-Belle-Ile-en-mer-923988161000459/",
  payment: "click & collect",
  support: "En attendant l'ouverture d'un e-shop, vous pouvez visiter le site de la boutique et contacter le gérant par mail ou téléphone pour établir un rendez-vous click and collect à l'adresse du magasin.",
  owner: owner1
)
commerce1.save
commerce1.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1604856967/margotetcompagnie_x5ou5x.jpg"), filename: "margotetcompagnie_x5ou5x.jpg")


#HAIR FUNNY

owner2 = Owner.new(
  pseudo: "Marylin Goslis",
  description: ""
)
owner2.save

commerce2 = Commerce.new(
  name: "Hair Funny",
  description: "Salon de coiffure, vente de produits cosmétiques et esthétiques.",
  tag: "beauté",
  tel: "06.72.41.88.87",
  mail: "ludovicgoslis@yahoo.fr",
  address: "16 Quai Jacques Leblanc, 56360 Le Palais",
  payment: "click & collect (espèces / chèques)",
  support: "En attendant l'ouverture d'un e-shop, vous pouvez visiter le site de la boutique et contacter le gérant par mail ou téléphone pour établir un rendez-vous click and collect à l'adresse du magasin.",
  owner: owner2
)
commerce2.save
commerce2.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1604932910/hairfunny_rzo8uw.png"), filename: "hairfunny_rzo8uw.png")



#REVERIES D'ILE

owner3 = Owner.new(
  pseudo: "Véronique Lambotin",
  description: ""
)
owner3.save

commerce3 = Commerce.new(
  name: "Rêveries d'Île",
  description: "Fusion et thermoformage du verre plat. Je propose mes créations en verre dans le domaine de l'art de la table, de la décoration.",
  tag: "décoration",
  tel: "06.86.73.84.04",
  mail: "reveriesdile@gmail.com",
  address: "9 rue Joseph Le Brix, 56360 Le Palais",
  website: "https://www.facebook.com/R%C3%AAveries-dIle-V%C3%A9ronique-Lambotin-Artisanat-du-verre-1393631734107274/",
  payment: "click & collect (espèces / carte / chèques)",
  support: "En attendant l'ouverture d'un e-shop, vous pouvez visiter le site de la boutique et contacter le gérant par mail ou téléphone pour établir un rendez-vous click and collect à l'adresse du magasin.",
  owner: owner3
)
commerce3.save
commerce3.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1604856949/reveriesdile_cwginn.jpg"), filename: "reveriesdile_cwginn.jpg")


#POTERYVES

owner4 = Owner.new(
  pseudo: "Yves Bernard-Bonabesse",
  description: ""
)
owner4.save

commerce4 = Commerce.new(
  name: "Potr'Yves Parlevent",
  description: "Poteries Céramiques fait main, pièces uniques. Utilitaires ou déco, crèches et décoration de Noël. Possibilités de commandes. Mon atelier à Parlevent - Bangor est ouvert toute l'année sur rendez-vous au 06 35 91 62 86 ou potryves@gmail.com.",
  tag: "artisanat,décoration",
  tel: "06.35.91.62.86",
  mail: "potryves@gmail.com",
  address: "Parlevent, 56360 Bangor",
  website: "https://www.potryves-parlevent.fr/",
  payment: "click & collect (espèces / carte / chèques)",
  support: "En attendant l'ouverture d'un e-shop, vous pouvez visiter le site de la boutique et contacter le gérant par mail ou téléphone pour établir un rendez-vous click and collect à l'adresse du magasin.",
  owner: owner4
)
commerce4.save
commerce4.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1604918382/potryves_qm9mb0.jpg"), filename: "potryves_qm9mb0")


#SHOPBURO

owner5 = Owner.new(
  pseudo: "Patrick Montagner",
  description: ""
)
owner5.save

commerce5 = Commerce.new(
  name: "Shopburo",
  description: "Vente de fournitures de bureau, scolaires, accessoires informatiques, de créativité .
Service de bureautique : photocopie du A3 au A6, copie, scan, impression photo, reliure, destructions documents, plastifications A4 au A6.
Personnalisation sur support : tee-shirt, mug, porte clé, set de table, pochette, pulzze",
  tag: "papeterie",
  tel: "02.97.31.99.15",
  mail: "buroplus@wanadoo.fr",
  address: "Rue Vauban 56360 Locmaria",
  website: "https://www.facebook.com/shopburo.fr",
  payment: "click & collect (espèces / carte / chèques)",
  support: "En attendant l'ouverture d'un e-shop, vous pouvez visiter le site de la boutique et contacter le gérant par mail ou téléphone pour établir un rendez-vous click and collect à l'adresse du magasin.",
  owner: owner5
)
commerce5.save
commerce5.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1604919387/shopburo_o56udi.jpg"), filename: "shopburo_o56udi")
