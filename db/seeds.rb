# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

Product.destroy_all
Commerce.destroy_all
Owner.destroy_all



#MARGOT ET COMPAGNIE

owner1 = Owner.new(
  pseudo: "Martine Lalouse"
)
owner1.save

commerce1 = Commerce.new(
  name: "Margot et Compagnie",
  description: "Boutique créée en 2012, ouverte à l'année et spécialisée en arts de la table, décoration, linge de maison, cadeaux et souvenirs.",
  tag: "décoration",
  tel: "06.08.36.88.79",
  mail: "lalouse.martine@orange.fr",
  address: "9 rue de l'Eglise, 56360 Le Palais",
  facebook: "https://www.facebook.com/pages/category/Gift-Shop/Margot-et-Compagnie-Belle-Ile-en-mer-923988161000459/",
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
  pseudo: "Véronique Lambotin"
)
owner3.save

commerce3 = Commerce.new(
  name: "Rêveries d'Île",
  description: "Fusion et thermoformage du verre plat. Je propose mes créations en verre dans le domaine de l'art de la table, de la décoration.",
  tag: "décoration,artisanat,produits locaux",
  tel: "06.86.73.84.04",
  mail: "reveriesdile@gmail.com",
  address: "Rue Lieutenant Riou, 56360 Sauzon",
  facebook: "https://www.facebook.com/R%C3%AAveries-dIle-V%C3%A9ronique-Lambotin-Artisanat-du-verre-1393631734107274/",
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
  description: "Poteries céramiques faites main, pièces uniques. Utilitaires ou déco, crèches et décoration de Noël. Possibilités de commandes. Mon atelier à Parlevent - Bangor est ouvert toute l'année sur rendez-vous au 06 35 91 62 86 ou potryves@gmail.com.",
  tag: "artisanat,décoration,produits locaux",
  tel: "06.35.91.62.86",
  mail: "potryves@gmail.com",
  address: "Parlevent, 56360 Bangor",
  website: "https://www.potryves-parlevent.fr/",
  facebook: "https://www.facebook.com/poterieceramique.belle.ile",
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
Personnalisation sur support : tee-shirt, mug, porte-clé, set de table, pochette, puzzle",
  tag: "papeterie",
  tel: "02.97.31.99.15",
  mail: "buroplus@wanadoo.fr",
  address: "Rue Vauban 56360 Locmaria",
  facebook: "https://www.facebook.com/shopburo.fr",
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
  facebook: "https://www.facebook.com/MoonBreakSurfShop/",
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
  payment: "click & collect (espèces / carte / chèque)",
  support: "En attendant l'ouverture d'un e-shop, vous pouvez contacter le gérant par mail ou téléphone pour établir un rendez-vous click and collect à l'adresse du magasin.",
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
- Sélection de vêtement 1m / 18 ans à prix tout doux (les coups de coeur HAPPYness)
- Des loisirs créatifs pour s'amuser de 7 à 77 ans
- Des jeux éducatifs
- De la déco vachement sympa pour la chambre
- Des accessoires (sacs à dos, cartables, trousses, chapeaux, tattoo...)
- Liste de naissance (Bavoirs, veilleuses, chaussons, mobiles, peluches)
- Cadeaux, Surprises, carterie",
  tag: "loisirs,mode,enfance",
  tel: "06.12.45.89.73",
  mail: "happyness56360@gmail.com",
  address: "8 rue de la Citadelle 56360 Le Palais",
  facebook: "https://www.facebook.com/HAPPYnessbellile",
  payment: "click & collect (espèces / carte / chèque)",
  support: "En attendant l'ouverture d'un e-shop, vous pouvez visiter la page de la boutique et contacter le gérant par mail ou téléphone pour établir un rendez-vous click and collect à l'adresse du magasin.",
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
  facebook: "https://www.facebook.com/marion.kerignardmosaique",
  payment: "click & collect (espèces / chèque)",
  support: "En attendant l'ouverture d'un e-shop, vous pouvez visiter la page de la boutique et contacter le gérant par mail ou téléphone pour établir un rendez-vous click and collect à l'adresse du magasin.",
  owner: owner9
)
commerce9.save
commerce9.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605091937/latelierdelaruepave_klp6bt.jpg"), filename: "latelierdelaruepave_klp6bt")


#ATELIER 13M2

owner10 = Owner.new(
  pseudo: "Morgane Lenglart"
)
owner10.save

commerce10 = Commerce.new(
  name: "Atelier 13m2",
  description: "Création d'objets de décoration, sculptures, luminaires",
  tag: "artisanat,produits locaux,décoration",
  tel: "06.66.43.10.59",
  mail: "lenglart.morgane@gmail.com",
  address: "Bordustard, 56360 Le Palais",
  facebook: "https://www.facebook.com/atelier13m2",
  website: "www.atelier-13m2.com",
  payment: "click & collect (espèces / chèque)",
  support: "Vous pouvez visiter le site de la boutique et contacter le gérant par mail ou téléphone pour établir un rendez-vous click and collect à l'adresse du magasin.",
  owner: owner10
)
commerce10.save
commerce10.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605092366/atelier13m2_avoyyi.png"), filename: "atelier13m2_avoyyi")



#LA MAIN A LA PAT

owner11 = Owner.new(
  pseudo: "Noémie Soulier",
  description: ""
)
owner11.save

commerce11 = Commerce.new(
  name: "La Main à la Pat'",
  description: "Crêperie de caractère à Belle-île-en-mer. Nous utilisons exclusivement des produits frais et de saison, un maximum de produits locaux (légumes, lait, fromages, glaces, thés et tisanes, saumon, chocolat, apéritifs, vins, charcuterie), et ce toute l’année.",
  tag: "gastronomie",
  tel: "06.85.07.59.23",
  mail: "lamainalapat@hotmail.fr",
  address: "1 rue de l'Église, 56360 Le Palais",
  facebook: "https://www.facebook.com/lamainalapat",
  payment: "click & collect (espèces / chèque)",
  support: "Vous pouvez visiter la page de la boutique et contacter le gérant par mail ou téléphone pour établir un rendez-vous click and collect à l'adresse du magasin.",
  owner: owner11
)
commerce11.save
commerce11.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605120090/lamainalapat_zcoqvh.jpg"), filename: "lamainalapat_zcoqvh")


#SPAR

owner12 = Owner.new(
  pseudo: "Valérie Fortin"
)
owner12.save

commerce12 = Commerce.new(
  name: "SPAR",
  description: "Commerce, alimentation générale.",
  tag: "gastronomie",
  tel: "02.97.31.74.39",
  mail: "spar.locmaria.56@orange.fr",
  address: "56360 Locmaria",
  website: "https://www.spar.fr/",
  payment: "click & collect (espèces / chèque)",
  support: "Le commerce est ouvert pendant le confinement.",
  owner: owner12
)
commerce12.save
commerce12.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605120462/spar_xmo489.jpg"), filename: "spar_xmo489")

#AMARENTE

owner13 = Owner.new(
  pseudo: "Muriel Lorec",
  description: ""
)
owner13.save

commerce13 = Commerce.new(
  name: "Amarente",
  description: "Soins de beauté visage et corps (épilations, soins visage, beauté du regard, beauté des mains et pieds, conseils beauté...) massages bien-être et énergétiques.",
  tag: "beauté",
  tel: "06.74.75.72.83",
  mail: "muriel.lorec@orange.fr",
  address: "19 Quai Gambetta - étage 1, 56360 Le Palais",
  facebook: "https://www.facebook.com/amarantemlorec",
  website: "https://app.flexybeauty.com/amarante/home",
  payment: "Sur place (espèces / chèque) - e-shop",
  support: "Je vous reçois à mon domicile. Cartes cadeaux en ligne et/ou livraison cartes 'carton' en livraison durant la fermeture administrative.",
  owner: owner13
)
commerce13.save
commerce13.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605120874/amarente_wzhq2i.jpg"), filename: "amarente_wzhq2i")



#LA BELLE AU BOIS

owner14 = Owner.new(
  pseudo: "Maryse Foulgoc",
  description: ""
)
owner14.save

commerce14 = Commerce.new(
  name: "La Belle au Bois",
  description: "Magasin de jouets en bois et jeux pour tous les âges, marques françaises et européennes.",
  tag: "loisirs,enfance",
  tel: "06.10.70.35.54",
  mail: "labelleaubois56@orange.fr",
  address: "4 rue de la Citadelle, 56360 Le Palais",
  facebook: "https://www.facebook.com/labelleauboisbelleile",
  payment: "click & collect (espèces / carte / chèque)",
  support: "Retrait des achats en magasin.",
  owner: owner14
)
commerce14.save
commerce14.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605177617/labelleaubois_y2t7yv.jpg"), filename: "labelleaubois_y2t7yv")

product1_commerce14 = Product.new(
  name: "Puzzles 3D",
  description: "Marque italienne.",
  price: 23,
  commerce: commerce14
)
product1_commerce14.save
product1_commerce14.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605177959/125020752_412107946466010_3294831533753703519_n_-_Ludivine_Pre%CC%81vot_qmc64e.jpg"), filename: "125020752_412107946466010_3294831533753703519_n_-_Ludivine_Prévot_qmc64e")


product2_commerce14 = Product.new(
  name: "Livres sonores",
  description: "Marque italienne.",
  price: 20,
  commerce: commerce14
)
product2_commerce14.save
product2_commerce14.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605177913/124913765_825594948240373_6777012488168195893_n_-_Ludivine_Pre%CC%81vot_cjnf03.jpg"), filename: "124913765_825594948240373_6777012488168195893_n_-_Ludivine_Prévot_cjnf03")


product3_commerce14 = Product.new(
  name: "Jouets en bois",
  description: "Marque Vilac. De 10€ à 90€ en fonction du modèle.",
  commerce: commerce14
)
product3_commerce14.save
product3_commerce14.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605177911/124625614_363335548282754_8403722844926922000_n_-_Ludivine_Pre%CC%81vot_mxf2ay.jpg"), filename: "124625614_363335548282754_8403722844926922000_n_-_Ludivine_Prévot_mxf2ay")



#EXCALIBUR

owner15 = Owner.new(
  pseudo: "Henry Nunney",
  description: ""
)
owner15.save
owner15.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605196762/Logo_Excalibur_-_Henry_Nunney_zazrn2.jpg"), filename: "Logo_Excalibur_-_Henry_Nunney_zazrn2")

commerce15 = Commerce.new(
  name: "Excalibur",
  description: "Horlogerie-bijouterie. Ventes et réparations.",
  tag: "mode",
  tel: "02.97.31.56.46",
  mail: "excalibur.belleile@gmail.com",
  address: "1 rue de Verdun, 56360 Le Palais",
  payment: "click & collect (espèces / carte / chèque)",
  support: "Commande par téléphone, sms ou e-mail.",
  owner: owner15
)
commerce15.save
commerce15.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605179910/fac%CC%A7ade_Excalibur_-_Henry_Nunney_mfypob.jpg"), filename: "façade_Excalibur_-_Henry_Nunney_mfypob")

product1_commerce15 = Product.new(
  name: "Montre Chronographe Festina",
  price: 169,
  commerce: commerce15
)
product1_commerce15.save
product1_commerce15.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605179893/f20370_1_-_Henry_Nunney_rfenoy.png"), filename: "f20370_1_-_Henry_Nunney_rfenoy")


product2_commerce15 = Product.new(
  name: "Bague en or",
  description: "Or 750/000 1,40g avec un rubis taille 54",
  price: 250,
  commerce: commerce15
)
product2_commerce15.save
product2_commerce15.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605179888/006062-1_-_Henry_Nunney_ykamja.jpg"), filename: "006062-1_-_Henry_Nunney_ykamja")


product3_commerce15 = Product.new(
  name: "Collier argent Murat",
  price: 89,
  commerce: commerce15
)
product3_commerce15.save
product3_commerce15.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605179890/011966-1_-_Henry_Nunney_cywqmu.jpg"), filename: "011966-1_-_Henry_Nunney_cywqmu")




#LA LONGUE VUE

owner16 = Owner.new(
  pseudo: "Librairie La Longue Vue",
  description: ""
)
owner16.save
owner16.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605203643/Mister_pief_-_Naudin_Sophie_c56af2.png"), filename: "Mister_pief_-_Naudin_Sophie_c56af2")

commerce16 = Commerce.new(
  name: "Librairie La Longue Vue",
  description: "Découvrez le livre que vous ne cherchiez pas ! Ouverte toute l'année, la LIBRAIRIE LA LONGUE VUE propose livres neufs ou d'occasion, bandes dessinées ou livres jeunesse, polars ou littérature française et étrangère.",
  tag: "loisirs",
  tel: "02.97.14.13.99",
  mail: "librairie.lalonguevue@gmail.com",
  address: "Avenue Carnot, 56360 Le Palais",
  facebook: "https://www.facebook.com/librairie.lalonguevue",
  website: "https://www.librairielalonguevue.fr/",
  payment: "click & collect (espèces / carte / chèque) et en ligne via le e-shop.",
  support: "Commandez sur www.librairielalonguevue.fr ou au 02.97.14.13.99 ou 06.64.20.31.96
Retirez et réglez chez nos partenaires : Ici on aime - Le Palais, Vival - Sauzon, Proxi
 - Bangor, Le Kervi - Kervilahouen , La Fontaine - Locmaria.
Frais d'expédition gratuits en dehors de Belle-Île pendant le confinement !",
  owner: owner16
)
commerce16.save
commerce16.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605203650/Librairie_La_Longue_Vue_-_Naudin_Sophie_lix6ew.jpg"), filename: "Librairie_La_Longue_Vue_-_Naudin_Sophie_lix6ew")



#ICI ON AIME

owner17 = Owner.new(
  pseudo: "Déborah Painvin",
  description: ""
)
owner17.save
owner17.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605204351/logo_ICIOA_fond_blanc_-_Deborah_Painvin_qy79sh.png"), filename: "logo_ICIOA_fond_blanc_-_Deborah_Painvin_qy79sh")

commerce17 = Commerce.new(
  name: "Ici on aime",
  description: "Épicerie fine proposant des produits de qualité, pour accompagner tous vos moments conviviaux (petit déjeuner, apéritif, pique-nique...). Sucré, salé, condiment, café, thé... Paniers gourmands pour offrir ou se faire plaisir.",
  tag: "produits locaux,gastronomie",
  mail: "icionaime.bi@gmail.com",
  address: "11 Avenue Carnot, 56360 Le Palais",
  website: "https://www.facebook.com/icionaimebelleile",
  payment: "Sur place (espèces / carte / chèque).",
  support: "L'épicerie reste ouverte pendant le confinement. Venir directement à la boutique, Lundi, Mardi, Jeudi, Vendredi et Samedi de 9h30 à 12h30 et de 16h00 à 18h30.",
  owner: owner17
)
commerce17.save
commerce17.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605204391/Photo_fac%CC%A7ade_-_Deborah_Painvin_qvratc.jpg"), filename: "Photo_façade_-_Deborah_Painvin_qvratc")



#L'ANA'TIFS COIFFURE

owner18 = Owner.new(
  pseudo: "L'ana'tifs coiffure"
)
owner18.save
owner18.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605205116/sandrine_salon_OFFICE_-_sandrine_lucas_mheuuy.jpg"), filename: "sandrine_salon_OFFICE_-_sandrine_lucas_mheuuy")

commerce18 = Commerce.new(
  name: "L'ANA'TIFS COIFFURE",
  description: "Salon de coiffure",
  tag: "beauté",
  address: "22 Avenue Carnot, 56360 Le Palais",
  tel: "06.95.13.75.94",
  facebook: "https://www.facebook.com/Lanatifscoiffure56",
  payment: "Sur place (espèces / chèque).",
  support: "Appelez pour prendre rendez-vous !",
  owner: owner18
)
commerce18.save
commerce18.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605205116/salon_2_-_sandrine_lucas_l4ipn4.jpg"), filename: "salon_2_-_sandrine_lucas_l4ipn4")



#COLORISLE

owner19 = Owner.new(
  pseudo: "Jean-Luc Boehm"
)
owner19.save
owner19.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605205933/1E37B573-DDF6-4D41-975D-51D76781623C_-_karine_boehm_ujarx2.jpg"), filename: "1E37B573-DDF6-4D41-975D-51D76781623C_-_karine_boehm_ujarx2")

commerce19 = Commerce.new(
  name: "Color'isle",
  description: "Entreprise de peinture / Vente de peinture et outillage / Vente et pose de poêles à bois et accessoires de fumisterie / magasin pour professionnels & particuliers. Ramonage.",
  tag: "décoration",
  tel: "02.97.31.89.43",
  mail: "color-isle@orange.fr",
  facebook: "https://www.facebook.com/Colorisle-1640949656167686/",
  address: "3 ZA de Merezelle, 56360 Le Palais",
  payment: "Sur place (espèces / carte / chèque)",
  support: "Le magasin reste ouvert pendant le confinement.",
  owner: owner19
)
commerce19.save
commerce19.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605205935/059956AF-F977-441E-9C6B-EDE95E107918_-_karine_boehm_ikxuk1.jpg"), filename: "059956AF-F977-441E-9C6B-EDE95E107918_-_karine_boehm_ikxuk1")

product1_commerce19 = Product.new(
  name: "Show Room poêles",
  commerce: commerce19
)
product1_commerce19.save
product1_commerce19.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605205988/D05E6F48-FDBB-4377-89E2-CF2CFEBAFC9F_-_karine_boehm_nmqr4i.jpg"), filename: "D05E6F48-FDBB-4377-89E2-CF2CFEBAFC9F_-_karine_boehm_nmqr4i")


product2_commerce19 = Product.new(
  name: "Peinture &outillage/Machine à teinter ",
  commerce: commerce19
)
product2_commerce19.save
product2_commerce19.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605205935/9AA2CE7C-F763-4F47-845D-B85E1C36B66D_-_karine_boehm_uwxh5d.jpg"), filename: "9AA2CE7C-F763-4F47-845D-B85E1C36B66D_-_karine_boehm_uwxh5d")


product3_commerce19 = Product.new(
  name: "Accessoires déco",
  commerce: commerce19
)
product3_commerce19.save
product3_commerce19.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605205993/E898F807-624D-4168-921C-262B99165C52_-_karine_boehm_yytws6.jpg"), filename: "E898F807-624D-4168-921C-262B99165C52_-_karine_boehm_yytws6")




#MER ET FILLE

owner20 = Owner.new(
  pseudo: "Elodie Gravier"
)

owner20.save
owner20.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605436487/image_-_E%CC%81lodie_Gravier_1_g3rkts.jpg"), filename: "image_-_Élodie_Gravier_1_g3rkts")

commerce20 = Commerce.new(
  name: "Mer&Fille",
  description: "Boutique de mode femme.",
  tag: "mode",
  tel: "06.19.60.42.75",
  mail: "meretfille56@yahoo.com",
  address: "Place de la République, 56360 Le Palais",
  payment: "Sur place (espèces / chèque)",
  support: "Vitrine photo sur Facebook prise de rdv. Possibilité de livraison.",
  owner: owner20
)
commerce20.save
commerce20.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605436493/image_-_E%CC%81lodie_Gravier_lto96v.jpg"), filename: "image_-_Élodie_Gravier_lto96v")

product1_commerce20 = Product.new(
  name: "Jott avec capuche",
  price: 160,
  commerce: commerce20
)
product1_commerce20.save
product1_commerce20.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605436562/6BBE8200-8CD1-4170-AFF3-2223A8C2FC07_-_E%CC%81lodie_Gravier_zqiozf.jpg"), filename: "6BBE8200-8CD1-4170-AFF3-2223A8C2FC07_-_Élodie_Gravier_zqiozf")


product2_commerce20 = Product.new(
  name: "Boots Pataugas",
  price: 89,
  commerce: commerce20,
)
product2_commerce20.save
product2_commerce20.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605436550/1D48FD4D-5FA3-4688-9F3A-7A5EB88634BB_-_E%CC%81lodie_Gravier_dccs1e.jpg"), filename: "1D48FD4D-5FA3-4688-9F3A-7A5EB88634BB_-_Élodie_Gravier_dccs1e")


product3_commerce20 = Product.new(
  name: "Veja entre 99€ et 125€",
  commerce: commerce20
)
product3_commerce20.save
product3_commerce20.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605436547/AF0CD293-F0C0-4B34-BC32-3AC0241F5D8C_-_E%CC%81lodie_Gravier_w68qda.png"), filename: "AF0CD293-F0C0-4B34-BC32-3AC0241F5D8C_-_Élodie_Gravier_w68qda")




#LA BIEN NOMMÉE

owner21 = Owner.new(
  pseudo: "La Bien Nommée"
)

owner21.save
owner21.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605437799/La-Bien-Nomme%CC%81e-logo-web_-_Marie_Que%CC%81re%CC%81_wqanz4.png"), filename: "La-Bien-Nommée-logo-web_-_Marie_Quéré_wqanz4")

commerce21 = Commerce.new(
  name: "La Bien Nommée",
  description: "Avec notre savoir-faire et des ingrédients de qualité, nous fabriquons des gourmandises uniques en harmonie avec la naturalité de l'île. Nous mettons au point nos recettes et fabriquons artisanalement tous nos produits sur Belle-Île-en-Mer, dans notre atelier de fabrication qui compte à l’année une vingtaine d’emplois sur l’île.",
  tag: "produits locaux,artisanat,gastronomie",
  tel: "02.97.31.34.99",
  mail: "service.client@labiennommee.bzh",
  website: "https://www.labiennommee.bzh/",
  facebook: "https://www.facebook.com/labiennommee/",
  address: "ZA Bordilla - 56360 Le Palais",
  payment: "En ligne",
  support: "Rendez-vous sur notre boutique en ligne où vous pourrez retrouver l'ensemble de nos produits. Remplissez votre panier avec les gourmandises qui vous font plaisir puis choisissez un mode de livraison (en point relais ou à domicile). Le paiement s'effectue depuis notre plateforme sécurisée de paiement en ligne.",
  owner: owner21
)
commerce21.save
commerce21.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605437876/Ga%CC%82teau-breton---LBN---BD_-_Marie_Que%CC%81re%CC%81_jbar4k.jpg"), filename: "Gâteau-breton---LBN---BD_-_Marie_Quéré_jbar4k")

product1_commerce21 = Product.new(
  name: "Galettes fines au blé noir - Coffret de 500 g",
  price: 11.50,
  description: "Ces biscuits d'une finesse remarquable seront aussi délicieux émiettés dans des verrines, un crumble ou un tiramisu que pour agrémenter votre dessert : mousse au chocolat, yaourt nature... ou toastés à l'apéritif !",
  commerce: commerce21
)
product1_commerce21.save
product1_commerce21.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605437320/309_01_-_Marie_Que%CC%81re%CC%81_lveiom.jpg"), filename: "309_01_-_Marie_Quéré_lveiom")


product2_commerce21 = Product.new(
  name: "Caramels au beurre salé - Cube de 110 g",
  description: "À déguster ou à incorporer dans vos recettes, ces caramels sont un vrai régal 100% bellilois !",
  price: 4.70,
  commerce: commerce21,
)
product2_commerce21.save
product2_commerce21.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605437326/976_Cube_caramels_BS_110g_-_Marie_Que%CC%81re%CC%81_nzngaj.jpg"), filename: "976_Cube_caramels_BS_110g_-_Marie_Quéré_nzngaj")


product3_commerce21 = Product.new(
  name: "Crème de caramel au chocolat - Pot de 340 g",
  price: 6.60,
  description: "Au petit déjeuner, en dessert ou au goûter, la crème de caramel au chocolat se déguste de mille façons : à tartiner sur du pain frais, en nappage de vos crêpes ou encore dans vos pâtisseries !",
  commerce: commerce21
)
product3_commerce21.save
product3_commerce21.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605437323/991-Cre%CC%80me-de-caramel-au-chocolat-LBN---pot-340g---BD_-_Marie_Que%CC%81re%CC%81_yozwxg.jpg"), filename: "991-Crème-de-caramel-au-chocolat-LBN---pot-340g---BD_-_Marie_Quéré_yozwxg")



#BELLE ISLE SIMA

owner22 = Owner.new(
  pseudo: "Belle-isle Sima"
)
owner22.save
owner22.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605438553/image15_-_Institut_Belle-isle_Sima_em45y7.png"), filename: "image15_-_Institut_Belle-isle_Sima_em45y7")

commerce22 = Commerce.new(
  name: "Belle-isle Sima",
  description: "Vente de produits Bio, naturels, Made in France. Prestation : Épilations femme et homme, Manucure, Pédicure, Soin Visage sont a découvrir (les prestations ne sont pas disponibles pendant le confinement).",
  tag: "beauté",
  address: "9 Place de la République, 56360 Le Palais",
  tel: "02.97.29.58.32",
  mail: "institutbelle-islesima@outlook.fr",
  website: "https://www.kalendes.com/institutbelle-islesima/#/welcome",
  facebook: "https://www.facebook.com/institutbelleislesima",
  payment: "Click & collect (espèces / carte).",
  support: "Réservez vos produit en ligne, choisir un horaire de retrait en ligne, payer en boutique.",
  owner: owner22
)
commerce22.save
commerce22.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605438550/image11_-_Institut_Belle-isle_Sima_ot44d1.png"), filename: "image11_-_Institut_Belle-isle_Sima_ot44d1")



#LES SAVONS DE BELLE-ÎLE

owner23 = Owner.new(
  pseudo: "Bianca Collin"
)

owner23.save
owner23.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605439317/Logo_Les_Savons_de_Belle_ile_-_passe_part_tout_lioris_gj0zkg.jpg"), filename: "Logo_Les_Savons_de_Belle_ile_-_passe_part_tout_lioris_gj0zkg")

commerce23 = Commerce.new(
  name: "Les Savons de Belle Ile",
  description: "Née à Belle ile, je travaille avec des partenaires Bellilois et passionnés pour vous garantir des Savons Naturels aux huiles BIO, fabrication locale et bretonne, à la main jusqu'à l'emballage, des produits cosmétiques sains, éthiques, bons pour vous et pour notre environnement.
Sans parler bien sur, du Label 'Savoir Faire des Iles du Ponant' qui regroupe des artisans et commerçants Iliens Bretons ! ",
  tag: "beauté,artisanat,produits locaux",
  tel: "06.56.73.35.47",
  website: "https://www.savonsdebelleile.fr/",
  address: "Le Champ de Course, 56360 Le Palais",
  payment: "Sur place (espèces / chèque)",
  support: "N'hésitez pas à visiter notre site internet, vous pouvez commander directement avec paiement sécurisé, sans le port à payer pour les livraisons à Belle-île, appelez moi et nous conviendrons ensemble d'un rendez vous...",
  owner: owner23
)
commerce23.save
commerce23.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605439253/IMG_20200612_094937_302_1_-_passe_part_tout_lioris_dhgcik.jpg"), filename: "IMG_20200612_094937_302_1_-_passe_part_tout_lioris_dhgcik")

product1_commerce23 = Product.new(
  name: "Le Savon au Algues de Belle-Île",
  description: "Ramassées à chaque grande marée pour leurs cotés exfoliant et vivifiant. Aux huiles BIO, 6% surgras, très doux avec vous, pour tout type de peau.",
  commerce: commerce23
)
product1_commerce23.save
product1_commerce23.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605439267/IMG_20191020_172520_1_-_passe_part_tout_lioris_id4gxp.jpg"), filename: "IMG_20191020_172520_1_-_passe_part_tout_lioris_id4gxp")


product2_commerce23 = Product.new(
  name: "Savon au miel de Belle-Île (Richard Laurance Apiculteur à Sauzon)",
  description: "Vous donne un Savon qui change de couleur selon la saison, un savon tout doux, réparateur et cicatrisant pour les peaux abîmées.",
  commerce: commerce23,
)
product2_commerce23.save
product2_commerce23.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605439329/IMG_20191017_191024_-_passe_part_tout_lioris_csoota.jpg"), filename: "IMG_20191017_191024_-_passe_part_tout_lioris_csoota")


product3_commerce23 = Product.new(
  name: "Savon au Lait de Belle-Île (ferme Guégan et Caro)",
  description: "Un lait à 42 % de matières grasses pour un savon onctueux et généreux, hydratant hydratant et hydratant !!!! Un vrai bonheur pour les peaux sèches et sensibles !",
  commerce: commerce23
)
product3_commerce23.save
product3_commerce23.photo.attach(io: URI.open("https://res.cloudinary.com/deylw9hu5/image/upload/v1605439296/IMG_20191007_095647_1_-_passe_part_tout_lioris_laaiv1.jpg"), filename: "IMG_20191007_095647_1_-_passe_part_tout_lioris_laaiv1")



