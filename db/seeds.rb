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
  pseudo: "Martine Lalouse",
  description: ""
)
owner1.save

commerce1 = Commerce.new(
  name: "Margot et Compagnie",
  description: "Boutique crée en 2012, ouverte à l'année, et spécialisée en Arts de la Table, décoration, linge de maison, cadeaux et souvenirs.",
  tag: "décoration",
  tel: "06.08.36.88.79",
  mail: "lalouse.martine@orange.fr",
  address: "9 rue de l'Eglise, 56360 Le Palais",
  website: "https://www.facebook.com/pages/category/Gift-Shop/Margot-et-Compagnie-Belle-Ile-en-mer-923988161000459/",
  payment: "click & collect",
  owner: owner1
)
commerce1.save


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
  owner: owner2
)
commerce2.save



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
  owner: owner3
)
commerce3.save
