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
Product.destroy_all


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
  payment: "click & collect (espèces / carte / chèque)",
  support: "Présence en boutique, le Mardi, Vendredi et Samedi matin de 10h00 à 12h30 et sur rendez-vous l'après-midi pour retrait et paiement des commandes. Possibilité de Livraison. E-shop à venir...",
  owner: owner1
)
commerce1.save
commerce1.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1604856967/margotetcompagnie_x5ou5x.jpg"), filename: "margotetcompagnie_x5ou5x.jpg")

product1_commerce1 = Product.new(
  name: "Plats à four",
  description: "Collection bleu nuit pour ces plats à four en céramique Appolia de Peugeot qui mettront vos recettes familiales en vedette sur votre table.",
  commerce: commerce1
)
product1_commerce1.save
product1_commerce1.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605094752/APPOLIA_gamme_BLEUE_ambiance_2_lm85kd.jpg"), filename: "APPOLIA_gamme_BLEUE_ambiance_2_lm85kd")


product2_commerce1 = Product.new(
  name: "Moulin à poivre PEUGEOT",
  description: "Moulin à poivre PEUGEOT 30 cm et 18 cm",
  commerce: commerce1
)
product2_commerce1.save
product2_commerce1.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605094752/OPHELIEDELMARLE_PAULPASSERON_PS_graphite-680x1000_xo170d.jpg"), filename: "OPHELIEDELMARLE_PAULPASSERON_PS_graphite-680x1000_xo170d")


product3_commerce1 = Product.new(
  name: "6 Flûtes à Champagne BILLY",
  description: "BILLY est une collection de flûte et de coupe à champagne gravée de traits fins et habillée de 2 filets or. Ces verres donneront une allure chic et festive à toutes vos réceptions.",
  price: 63,
  commerce: commerce1
)
product3_commerce1.save
product3_commerce1.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605094751/204390890-amb_1_ajffrx.jpg"), filename: "204390890-amb_1_ajffrx")





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
  payment: "click & collect (espèces / chèque)",
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
  tag: "décoration,artisanat,produits locaux",
  tel: "06.86.73.84.04",
  mail: "reveriesdile@gmail.com",
  address: "Rue Lieutenant Riou, 56360 SAUZON",
  website: "https://sites.google.com/view/reveriesdile/",
  payment: "click & collect (espèces / carte / chèque)",
  support: "Vous pouvez visiter le site de la boutique et contacter le gérant par mail ou téléphone pour établir un rendez-vous click and collect à l'adresse du magasin.",
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
  tag: "artisanat,décoration,produits locaux",
  tel: "06.35.91.62.86",
  mail: "potryves@gmail.com",
  address: "Parlevent, 56360 Bangor",
  website: "https://www.potryves-parlevent.fr/",
  payment: "click & collect (espèces / carte / chèque)",
  support: "En attendant l'ouverture d'un e-shop, vous pouvez visiter le site de la boutique et contacter le gérant par mail ou téléphone pour établir un rendez-vous click and collect à l'adresse du magasin.
  Il est tout à fait possible de venir retirer les marchandises achetées à Parlevent à ma caravane d'expo et je peux aussi livrer",
  owner: owner4
)
commerce4.save
commerce4.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1604918382/potryves_qm9mb0.jpg"), filename: "potryves_qm9mb0")


product1_commerce4 = Product.new(
  name: "Crèche émaillée verte",
  price: 45,
  commerce: commerce4
)
product1_commerce4.save
product1_commerce4.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605095496/25_10_2020_2_u7k2ad.jpg"), filename: "25_10_2020_2_u7k2ad")


product2_commerce4 = Product.new(
  name: "Crèche en terre mêlées",
  description: "3 terres : bleue, blanche et marron",
  price: 45,
  commerce: commerce4
)
product2_commerce4.save
product2_commerce4.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605095498/17_12_2019_3_aamiko.jpg"), filename: "17_12_2019_3_aamiko")


product3_commerce4 = Product.new(
  name: "Service à thé",
  description: "La théière et 4 coupelles de dégustation émaillées bleu.",
  price: 55,
  commerce: commerce4
)
product3_commerce4.save
product3_commerce4.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605095497/08_11_2020_5_xmndwi.jpg"), filename: "08_11_2020_5_xmndwi")




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
  payment: "click & collect (espèces / carte / chèque)",
  support: "En attendant l'ouverture d'un e-shop, vous pouvez visiter le site de la boutique et contacter le gérant par mail ou téléphone pour établir un rendez-vous click and collect à l'adresse du magasin.",
  owner: owner5
)
commerce5.save
commerce5.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1604919387/shopburo_o56udi.jpg"), filename: "shopburo_o56udi")

#MOONBREAK

owner6 = Owner.new(
  pseudo: "Amélie Donzé",
  description: ""
)
owner6.save

commerce6 = Commerce.new(
  name: "Moonbreak Surfshop",
  description: "Vente et location de matériel de surf et bodyboard. Vêtements originaux et 'éco-conçus',nous essayons de travailler un maximum avec des marques engagées écologiquement.",
  tag: "mode,sport",
  tel: "06.99.45.49.53",
  mail: "moonbreak56@hotmail.com",
  address: "Place Bigarré 56360 Le Palais",
  website: "https://www.facebook.com/MoonBreakSurfShop/",
  payment: "click & collect (espèces / carte / chèque)",
  support: "En attendant l'ouverture d'un e-shop, vous pouvez visiter le site de la boutique et contacter le gérant par mail ou téléphone pour établir un rendez-vous click and collect à l'adresse du magasin.",
  owner: owner6
)
commerce6.save
commerce6.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605090746/moonbreak_pk9yph.jpg"), filename: "moonbreak_pk9yph")


#ÎLE LUMINÉ

owner7 = Owner.new(
  pseudo: "Juliette Buré",
  description: ""
)
owner7.save

commerce7 = Commerce.new(
  name: "Île Luminée",
  description: "Boutique Atelier de Luminaires en papier. Conception et réalisation d'abats jour originaux. Pièces uniques et sur mesure. Vente de papeterie d'illustrateurs, d'objets de décoration artisanaux, et de bijoux de créateurs.",
  tag: "artisanat,produits locaux,décoration",
  tel: "06.87.52.01.26",
  mail: "burejuliette@yahoo.fr",
  address: "6 Place Bigarré 56360 Le Palais",
  website: "https://www.facebook.com/shopburo.fr",
  payment: "click & collect (espèces / carte / chèque)",
  support: "En attendant l'ouverture d'un e-shop, vous pouvez visiter le site de la boutique et contacter le gérant par mail ou téléphone pour établir un rendez-vous click and collect à l'adresse du magasin.",
  owner: owner7
)
commerce7.save
commerce7.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605091072/ilelumine_cx11vp.jpg"), filename: "ilelumine_cx11vp")


#HAPPYNESS

owner8 = Owner.new(
  pseudo: "Ludivine Prévot",
  description: ""
)
owner8.save

commerce8 = Commerce.new(
  name: "HAPPYness",
  description: "Concept store bébé, enfant & ado
-Sélection de vêtement 1m / 18 ans à prix tout doux  (les coups de coeur HAPPYness)
- Des loisirs créatifs pour s'amuser de 7 à 77 ans
- Des jeux éducatifs
- De la déco vachement sympa pour la chambre
- Des accessoires (sacs à dos, cartable, trousses, chapeaux, tattoo...)
- Liste de naissance (Bavoirs, veilleuse,chaussons, mobiles, peluche)
- Cadeaux, Surprises, carterie",
  tag: "loisirs,mode,enfance",
  tel: "06.12.45.89.73",
  mail: "happyness56360@gmail.com",
  address: "8 rue de la Citadelle 56360 Le Palais",
  website: "https://www.facebook.com/HAPPYnessbellile",
  payment: "click & collect (espèces / carte / chèque)",
  support: "En attendant l'ouverture d'un e-shop, vous pouvez visiter le site de la boutique et contacter le gérant par mail ou téléphone pour établir un rendez-vous click and collect à l'adresse du magasin.",
  owner: owner8
)
commerce8.save
commerce8.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605091612/happyness_mfiy3l.jpg"), filename: "happyness_mfiy3l")

#L'ATELIER DE LA RUE PAVÉE

owner9 = Owner.new(
  pseudo: "Marion Kerignard",
  description: ""
)
owner9.save

commerce9 = Commerce.new(
  name: "L'Atelier de la Rue Pavée",
  description: "Je propose des tableaux en mosaïques et des encres de paysages de Belle Ile. Des sets de table d'après mes tableaux en série limitée; des mosaïques sur ardoise; des cartes postales d'après mes tableaux; des couteaux peints, personnalisables sur commande",
  tag: "artisanat,produits locaux,décoration",
  tel: "06.12.45.89.73",
  mail: "mosarion@gmail.com",
  address: "21 Avenue Carnot, 56360 Le Palais",
  website: "https://www.facebook.com/marion.kerignardmosaique",
  payment: "click & collect (espèces / chèque)",
  support: "En attendant l'ouverture d'un e-shop, vous pouvez visiter le site de la boutique et contacter le gérant par mail ou téléphone pour établir un rendez-vous click and collect à l'adresse du magasin.",
  owner: owner9
)
commerce9.save
commerce9.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605091937/latelierdelaruepave_klp6bt.jpg"), filename: "latelierdelaruepave_klp6bt")


#ATELIER 13M2

owner10 = Owner.new(
  pseudo: "Morgane Lenglart",
  description: ""
)
owner10.save

commerce10 = Commerce.new(
  name: "Atelier 13m2",
  description: "Création d'objets de décoration, sculptures, luminaires",
  tag: "artisant,produits locaux,décoration",
  tel: "06.66.43.10.59",
  mail: "lenglart.morgane@gmail.com",
  address: "Bordustard, 56360 Le Palais",
  website: "https://www.facebook.com/atelier13m2",
  payment: "click & collect (espèces / chèque)",
  support: "En attendant l'ouverture d'un e-shop, vous pouvez visiter le site de la boutique et contacter le gérant par mail ou téléphone pour établir un rendez-vous click and collect à l'adresse du magasin.",
  owner: owner10
)
commerce10.save
commerce10.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605092366/atelier13m2_avoyyi.png"), filename: "atelier13m2_avoyyi")



#ATELIER 13M2

owner11 = Owner.new(
  pseudo: "Morgane Lenglart",
  description: ""
)
owner11.save

commerce11 = Commerce.new(
  name: "Atelier 13m2",
  description: "Création d'objets de décoration, sculptures, luminaires",
  tag: "artisant,produits locaux,décoration",
  tel: "06.66.43.10.59",
  mail: "lenglart.morgane@gmail.com",
  address: "Bordustard, 56360 Le Palais",
  website: "https://www.facebook.com/atelier13m2",
  payment: "click & collect (espèces / chèque)",
  support: "En attendant l'ouverture d'un e-shop, vous pouvez visiter le site de la boutique et contacter le gérant par mail ou téléphone pour établir un rendez-vous click and collect à l'adresse du magasin.",
  owner: owner11
)
commerce11.save
commerce11.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605092366/atelier13m2_avoyyi.png"), filename: "atelier13m2_avoyyi")


#ATELIER 13M2

owner12 = Owner.new(
  pseudo: "Morgane Lenglart",
  description: ""
)
owner12.save

commerce12 = Commerce.new(
  name: "Atelier 13m2",
  description: "Création d'objets de décoration, sculptures, luminaires",
  tag: "artisant,produits locaux,décoration",
  tel: "06.66.43.10.59",
  mail: "lenglart.morgane@gmail.com",
  address: "Bordustard, 56360 Le Palais",
  website: "https://www.facebook.com/atelier13m2",
  payment: "click & collect (espèces / chèque)",
  support: "En attendant l'ouverture d'un e-shop, vous pouvez visiter le site de la boutique et contacter le gérant par mail ou téléphone pour établir un rendez-vous click and collect à l'adresse du magasin.",
  owner: owner12
)
commerce12.save
commerce12.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605092366/atelier13m2_avoyyi.png"), filename: "atelier13m2_avoyyi")

#ATELIER 13M2

owner13 = Owner.new(
  pseudo: "Morgane Lenglart",
  description: ""
)
owner13.save

commerce13 = Commerce.new(
  name: "Atelier 13m2",
  description: "Création d'objets de décoration, sculptures, luminaires",
  tag: "artisant,produits locaux,décoration",
  tel: "06.66.43.10.59",
  mail: "lenglart.morgane@gmail.com",
  address: "Bordustard, 56360 Le Palais",
  website: "https://www.facebook.com/atelier13m2",
  payment: "click & collect (espèces / chèque)",
  support: "En attendant l'ouverture d'un e-shop, vous pouvez visiter le site de la boutique et contacter le gérant par mail ou téléphone pour établir un rendez-vous click and collect à l'adresse du magasin.",
  owner: owner13
)
commerce13.save
commerce13.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605092366/atelier13m2_avoyyi.png"), filename: "atelier13m2_avoyyi")
