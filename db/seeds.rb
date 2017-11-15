# 0. Clean all DB
Order.destroy_all
Product.destroy_all
Farm.destroy_all
User.destroy_all

puts "1. Create user as farmer"
john = User.new(email: 'john@gmail.com', password: '123456789')
paul = User.new(email: 'paul@gmail.com', password: '123456789')
georges = User.new(email: 'georges@gmail.com', password: '123456789')
david = User.new(email: 'david@gmail.com', password: '123456789')
sylvain = User.new(email: 'sylvain@gmail.com', password: '123456789')
nath = User.new(email: 'nath@gmail.com', password: '123456789')

puts "2. Create farm"
johnfarm = Farm.new(name: 'La ferme de John', address: '107 cours Balguerie Stuttenberg, Bordeaux', photo: 'https://images.pexels.com/photos/248880/pexels-photo-248880.jpeg?w=1260&h=750&dpr=2&auto=compress&cs=tinysrgb')
paulfarm = Farm.new(name: 'La ferme de Paul', address: 'Talence', photo: 'https://3di6ns1klfxg1uoj71eeb8rr-wpengine.netdna-ssl.com/wp-content/uploads/2016/07/photo-farm.jpg')
georgesfarm = Farm.new(name: 'La ferme de Georges', address: 'Pessac', photo: 'https://i.pinimg.com/736x/c1/ce/df/c1cedf353ad23119cfda89c521796fe4--urban-agriculture-urban-farming.jpg')
davidfarm = Farm.new(name: 'La ferme Tagueule', address: 'Pompignac', photo: 'https://images.pexels.com/photos/175389/pexels-photo-175389.jpeg?w=1260&h=750&dpr=2&auto=compress&cs=tinysrgb')
sylvainfarm = Farm.new(name: 'La ferme agricole', address: 'Floirac', photo: 'https://images.pexels.com/photos/158179/lake-constance-sheep-pasture-sheep-blue-158179.jpeg?w=1260&h=750&dpr=2&auto=compress&cs=tinysrgb')
nathfarm = Farm.new(name: 'La ferme a Nath', address: 'gradignan', photo: 'https://images.pexels.com/photos/235725/pexels-photo-235725.jpeg?w=1260&h=750&dpr=2&auto=compress&cs=tinysrgb')

puts "3. Assign user to farm"
johnfarm.user = john
paulfarm.user = paul
georgesfarm.user = georges
davidfarm.user = david
sylvainfarm.user = sylvain
nathfarm.user = nath

puts "4. Create user as customer"
serge = User.new(email: 'serge@gmail.com', password: '123456789')
quentin = User.new(email: 'quentin@gmail.com', password: '123456789')
louis = User.new(email: 'louis@gmail.com', password: '123456789')
hugues = User.new(email: 'hugues@gmail.com', password: '123456789')
valou = User.new(email: 'valou@gmail.com', password: '123456789')
seb = User.new(email: 'seb@gmail.com', password: '123456789')


puts "5. Create a product"
pomme = Product.new(name: 'pomme', description: 'Introduite sur le marché dans les années 1960, la pomme Fuji est le résultat du croisement entre les variétés Ralls Janet et Red Delicious, hybridation réalisée au Japon en 1939.', price: 5, photo: 'https://images.pexels.com/photos/162806/apple-fruit-fruits-delicious-162806.jpeg?w=1260&h=750&dpr=2&auto=compress&cs=tinysrgb')

peche = Product.new(name: 'peche', description: 'Le Pêcher, parfois appelé Pêcher commun, (Prunus persica (L.) Batsch) est une espèce d arbres fruitiers de la famille des Rosaceae, cultivée pour son fruit comestible, la pêche.', price: 1, photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQc2lFDrSXiZ2DAowEz68ta_oggR0xR5oYS-yQb9nLSMoyJhC6N')

poire = Product.new(name: 'poire', description: 'Fruit de taille moyenne, elle a une forme de cloche très caractéristique. Sa peau lisse et brillante de ton vert tendre prend une belle couleur jaune à maturité. Cette variété vraisemblablement très ancienne a des origines incertaines. Elle serait venue de Calabre en France sous le règne de Louis XI, et aurait alors été appelée Bon-chrétien. Elle aurait transité par l’Angleterre et pris le nom d’un jardinier nommé William. On sait qu’elle s’est implantée aux Etats-Unis à la fin du XVIIIe siècle, sous l’appellation Bartlett, un nom qu’elle a conservé. Elle n’est réapparue en France que durant la première moitié du XIXe siècle. Elle est aujourd’hui la variété la plus cultivée dans le monde et doit une part de sa célébrité à l’eau de vie très parfumée qu’elle sert à confectionner.', price: 9, photo: 'https://images.pexels.com/photos/9546/night-fruit-pear.jpg?w=1260&h=750&dpr=2&auto=compress&cs=tinysrgb')

banane = Product.new(name: 'banane', description: 'Sa richesse en sucre et en arômes en a fait un des fruits préférés des enfants, accueilli comme une friandise dès le plus jeune âge.  Grâce à ses vertus nutritives, la banane est un fruit idéal pour faire face à une petite faim en cours de journée. A la fois riche en vitamines et en minéraux, avec notamment une teneur intéressante en magnésium et en potassium, elle est particulièrement énergétique. Les bananes sont toujours cueillies vertes et continuent leur maturation durant leur transport puis leur stockage en murisseries. Au cours de ce processus, leur couleur évolue vers le jaune et devient progressivement tigrée. Les bananiers cultivés comportent deux types de variétés : les bananes douces ou bananes à dessert qui nous sont familières; les bananes à cuire dont la plus répandue est la banane plantain.', price: 3, photo: 'https://images.pexels.com/photos/41957/banana-fruit-healthy-yellow-41957.jpeg?w=1260&h=750&dpr=2&auto=compress&cs=tinysrgb')

tomate = Product.new(name: 'tomate', description: 'Cette variété bien en chair aux courbes généreuses est une référence dans l’univers de la tomate.
Réputée pour son arôme et ses qualités gustatives, la tomate cœur de bœuf doit son nom à ses rotondités inégales. ', price: 4, photo: 'https://images.pexels.com/photos/5617/red-tomato-vegetable.jpg?w=1260&h=750&dpr=2&auto=compress&cs=tinysrgb')

courgette = Product.new(name: 'courgette', description: 'Cuisinée à l huile d olive, la courgette se révèle une merveille de finesse.  Elle est un des légumes indissociables de la traditionnelle ratatouille niçoise. Elle se prête aussi avec bonheur à la réalisation de farcis très savoureux, se mêlant volontiers aux herbes de Provence. La courgette n a pas besoin d être épluchée. Avant de la cuisiner, il suffit de la rincer et de couper ses deux extrémités. ', price: 2, photo: 'https://images.pexels.com/photos/128420/pexels-photo-128420.jpeg?w=1260&h=750&dpr=2&auto=compress&cs=tinysrgb')

puts "6. Assign product to farm & farm to product"
pomme.farm = johnfarm
poire.farm = paulfarm
peche.farm = georgesfarm
banane.farm = davidfarm
tomate.farm = sylvainfarm
courgette.farm = nathfarm

puts "7. Create an order with customer + product"
sergeorder = Order.new(quantity: 7, delivery_time: '27/10/2017')
sergeorder.product = pomme
sergeorder.user = serge
sergeorder.rating = 4
sergeorder.review = "c'est cool"

john.save
johnfarm.save
serge.save
pomme.save
sergeorder.save
#################
quentinorder = Order.new(quantity: 1, delivery_time: '27/11/2017')
quentinorder.product = poire
quentinorder.user = quentin
quentinorder.rating = 2
quentinorder.review = "c'est nul"

paul.save
paulfarm.save
quentin.save
poire.save
quentinorder.save
#################
louisorder = Order.new(quantity: 4, delivery_time: '17/10/2017')
louisorder.product = peche
louisorder.user = louis
louisorder.rating = 3
louisorder.review = "c'est pas top"

georges.save
georgesfarm.save
louis.save
peche.save
louisorder.save
################
huguesorder = Order.new(quantity: 11, delivery_time: '20/10/2017')
huguesorder.product = banane
huguesorder.user = hugues
huguesorder.rating = 5
huguesorder.review = 'hyper cool les bananes'

david.save
davidfarm.save
hugues.save
banane.save
huguesorder.save
#######################
valouorder = Order.new(quantity: 12, delivery_time: '27/12/2017')
valouorder.product = tomate
valouorder.user = valou
valouorder.rating = 5
valouorder.review = "Super ces tomates"

sylvain.save
sylvainfarm.save
valou.save
tomate.save
valouorder.save
#######################
seborder = Order.new(quantity: 3, delivery_time: '11/11/2017')
seborder.product = courgette
seborder.user = seb
seborder.rating = 1
seborder.review = "beurk"

nath.save
nathfarm.save
seb.save
courgette.save
seborder.save
