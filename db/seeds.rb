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
johnfarm = Farm.new(name: 'La ferme du Petit Argelas', address: '21 Rue Duvergier, 33200 Bordeaux', photo: 'https://images.pexels.com/photos/248880/pexels-photo-248880.jpeg?w=1260&h=750&dpr=2&auto=compress&cs=tinysrgb')
paulfarm = Farm.new(name: 'My primeur', address: '67 Route du Bord de l Eau, 33270 Bouliac', photo: 'https://3di6ns1klfxg1uoj71eeb8rr-wpengine.netdna-ssl.com/wp-content/uploads/2016/07/photo-farm.jpg')
georgesfarm = Farm.new(name: 'La ferme de georges', address: '14 Rue du Moulin Blanc, 33320 Eysines', photo: 'https://i.pinimg.com/736x/c1/ce/df/c1cedf353ad23119cfda89c521796fe4--urban-agriculture-urban-farming.jpg')
davidfarm = Farm.new(name: 'La ferme Tagueule', address: 'Pompignac', photo: 'https://images.pexels.com/photos/175389/pexels-photo-175389.jpeg?w=1260&h=750&dpr=2&auto=compress&cs=tinysrgb')
sylvainfarm = Farm.new(name: 'La Ferme de Tartifume', address: '165 Rue de la Princesse, 33600 Pessac', photo: 'https://images.pexels.com/photos/158179/lake-constance-sheep-pasture-sheep-blue-158179.jpeg?w=1260&h=750&dpr=2&auto=compress&cs=tinysrgb')
nathfarm = Farm.new(name: 'Ferme du Moulin de Cazau', address: '47 Rue des Palus, 33290 Parempuyre', photo: 'https://images.pexels.com/photos/235725/pexels-photo-235725.jpeg?w=1260&h=750&dpr=2&auto=compress&cs=tinysrgb')

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
pomme = Product.new(name: 'Fresho Apple - Shimla', description: 'Shimla Apples are cleanness, flavor and mild fragrance. These are essentially sourced from the farmers of Shimla who produce these at well-equipped hygienic farms. These are identified for their crunchy texture and sweet as well as slightly tasty flavor.
Product image shown is for representation purpose only, the actually product may vary based on season, produce & availability.', price: 5, photo: 'https://images.pexels.com/photos/162806/apple-fruit-fruits-delicious-162806.jpeg?w=1260&h=750&dpr=2&auto=compress&cs=tinysrgb')

peche = Product.new(name: 'Peaches - “Ugly” Aussie Small Yellow Peaches', description: 'Our “ugly” produce is the produce that doesn’t necessarily meet the regular customer’s idea of perfection. A few lumps and bumps here, a spot or two there. We still think they’re beautiful though.', price: 1, photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQc2lFDrSXiZ2DAowEz68ta_oggR0xR5oYS-yQb9nLSMoyJhC6N')

poire = Product.new(name: 'Organic Bartlett Pears', description: 'With its tender, fine-grained flesh, mild pineapple tang, and slightly grainy texture, the Bartlett is one of our favorite fruits. It s the ultimate summer pear. When its speckled green skin turns to yellow, this juicy pear is ripe and ready to eat. Though Bartletts can be cooked, we think their soft texture and outstanding flavor are best enjoyed when you bite into one fresh-picked.', price: 9, photo: 'https://images.pexels.com/photos/9546/night-fruit-pear.jpg?w=1260&h=750&dpr=2&auto=compress&cs=tinysrgb')

banane = Product.new(name: 'Organic Yellow Bananas', description: 'The banana is an anytime, year-round snack. We like them fully yellow with just a dusting of brown freckles. But super-ripe, meltingly sweet bananas and firmer greenish ones have their fans too. Slice them onto cereal or pancakes, fold into fruit salad, blend into smoothies, and bake into muffins. Heat brings out bananas creamy sweetness. Try baking, broiling, or sautéing them with butter and sugar for a luscious dessert.', price: 3, photo: 'https://images.pexels.com/photos/41957/banana-fruit-healthy-yellow-41957.jpeg?w=1260&h=750&dpr=2&auto=compress&cs=tinysrgb')

tomate = Product.new(name: 'Pink Heirloom Beefsteak Tomatoes', description: 'Revered for their sweet, meaty flavor and smooth, juicy texture, pink beefsteak tomatoes are a fruitful gift. They have smaller seed cavities than other tomatoes, which yields a higher ratio of flesh to juice. They make ideal burger and sandwich toppers, are excellent chopped up in salads or served in a Caprese, and are undeniably delicious when enjoyed on their own.', price: 4, photo: 'https://images.pexels.com/photos/5617/red-tomato-vegetable.jpg?w=1260&h=750&dpr=2&auto=compress&cs=tinysrgb')

courgette = Product.new(name: 'Organic Green Zucchini', description: 'This flavorful squash is available at its peak all year round. It is a mild and extremely versatile vegetable. Slice, chop, stuff, or grate it. Zucchini adds a fresh garden flavor to breads, soups, and pastas, and it s great by itself as a simply sautéed side dish.', price: 2, photo: 'https://images.pexels.com/photos/128420/pexels-photo-128420.jpeg?w=1260&h=750&dpr=2&auto=compress&cs=tinysrgb')

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
