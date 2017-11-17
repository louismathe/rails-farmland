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
johnfarm = Farm.new(name: 'Hall Hill Farm', address: '21 Rue Duvergier, 33200 Bordeaux', photo: 'https://images.pexels.com/photos/248880/pexels-photo-248880.jpeg?w=1260&h=750&dpr=2&auto=compress&cs=tinysrgb')
paulfarm = Farm.new(name: 'My primeur', address: '67 Route du Bord de l Eau, 33270 Bouliac', photo: 'https://images.unsplash.com/photo-1473554198449-fd330ccd766e?auto=format&fit=crop&w=2104&q=60&ixid=dW5zcGxhc2guY29tOzs7Ozs%3D')
georgesfarm = Farm.new(name: 'Hitchin Lavender', address: '14 Rue du Moulin Blanc, 33320 Eysines', photo: 'https://images.unsplash.com/photo-1475260151973-4b51c9c9af2d?auto=format&fit=crop&w=2104&q=60&ixid=dW5zcGxhc2guY29tOzs7Ozs%3D')
davidfarm = Farm.new(name: 'Bocketts Farm Park', address: '32 Rue du Pont Castaing, Pompignac', photo: 'https://images.pexels.com/photos/175389/pexels-photo-175389.jpeg?w=1260&h=750&dpr=2&auto=compress&cs=tinysrgb')
sylvainfarm = Farm.new(name: 'Smithills Open Farm', address: '165 Rue de la Princesse, 33600 Pessac', photo: 'https://images.pexels.com/photos/158179/lake-constance-sheep-pasture-sheep-blue-158179.jpeg?w=1260&h=750&dpr=2&auto=compress&cs=tinysrgb')
nathfarm = Farm.new(name: 'South Of England Rare Breeds Centre', address: '47 Rue des Palus, 33290 Parempuyre', photo: 'https://images.pexels.com/photos/235725/pexels-photo-235725.jpeg?w=1260&h=750&dpr=2&auto=compress&cs=tinysrgb')

puts "3. Assign user to farm"
johnfarm.user = john
paulfarm.user = paul
georgesfarm.user = georges
davidfarm.user = david
sylvainfarm.user = sylvain
nathfarm.user = nath

puts "4. Create user as customer"
serge = User.new(email: 'sylvain@volpeo.fr', password: '123456789')
quentin = User.new(email: 'quentin@gmail.com', password: '123456789')
louis = User.new(email: 'louis@gmail.com', password: '123456789')
hugues = User.new(email: 'hugues@gmail.com', password: '123456789')
valou = User.new(email: 'valou@gmail.com', password: '123456789')
seb = User.new(email: 'seb@gmail.com', password: '123456789')

puts "5. Create a product"
pomme = Product.new(name: 'Fresho Apple - Shimla', description: 'Shimla Apples are cleanness, flavor and mild fragrance. These are essentially sourced from the farmers of Shimla who produce these at well-equipped hygienic farms. These are identified for their crunchy texture and sweet as well as slightly tasty flavor.
Product image shown is for representation purpose only, the actually product may vary based on season, produce & availability.', price: 1, photo: 'https://images.pexels.com/photos/162806/apple-fruit-fruits-delicious-162806.jpeg?w=1260&h=750&dpr=2&auto=compress&cs=tinysrgb')

citron = Product.new(name: 'Lemons - Australian Certified Organic', description: 'Add abundant flavor to a variety of dishes with a simple drizzle of lemon', price: 3, photo: 'https://images.pexels.com/photos/129574/pexels-photo-129574.jpeg?w=940&h=650&dpr=2&auto=compress&cs=tinysrgb')

cerise = Product.new(name: 'Sweet Mountain Bing Cherries', description: 'These big, lustrous, long-stemmed cherries are grown in the rarefied air of a few high-altitude orchards in Washington state, where clear starry nights and cold mountain snowmelt produce sweeter, crisper, more delicious cherries than any you\'ve ever tasted. We select only the top few percent that meet Hale\'s stringent standards for quality.  Specially cushion-packed and rushed direct to your door in July. ', price: 8, photo: 'https://images.pexels.com/photos/175727/pexels-photo-175727.jpeg?w=1260&h=750&dpr=2&auto=compress&cs=tinysrgb')

peche = Product.new(name: 'Peaches - “Ugly” Aussie Small Yellow Peaches', description: 'Our “ugly” produce is the produce that doesn’t necessarily meet the regular customer’s idea of perfection. A few lumps and bumps here, a spot or two there. We still think they’re beautiful though.', price: 1, photo: 'https://images.unsplash.com/photo-1504577089374-ed8ee92673bb?auto=format&fit=crop&w=2100&q=60&ixid=dW5zcGxhc2guY29tOzs7Ozs%3D')

poire = Product.new(name: 'Organic Bartlett Pears', description: 'With its tender, fine-grained flesh, mild pineapple tang, and slightly grainy texture, the Bartlett is one of our favorite fruits. It s the ultimate summer pear. When its speckled green skin turns to yellow, this juicy pear is ripe and ready to eat. Though Bartletts can be cooked, we think their soft texture and outstanding flavor are best enjoyed when you bite into one fresh-picked.', price: 3, photo: 'https://images.pexels.com/photos/9546/night-fruit-pear.jpg?w=1260&h=750&dpr=2&auto=compress&cs=tinysrgb')

banane = Product.new(name: 'Organic Yellow Bananas', description: 'The banana is an anytime, year-round snack. We like them fully yellow with just a dusting of brown freckles. But super-ripe, meltingly sweet bananas and firmer greenish ones have their fans too. Slice them onto cereal or pancakes, fold into fruit salad, blend into smoothies, and bake into muffins. Heat brings out bananas creamy sweetness. Try baking, broiling, or sautéing them with butter and sugar for a luscious dessert.', price: 2, photo: 'https://images.pexels.com/photos/41957/banana-fruit-healthy-yellow-41957.jpeg?w=1260&h=750&dpr=2&auto=compress&cs=tinysrgb')

tomate = Product.new(name: 'Pink Heirloom Beefsteak Tomatoes', description: 'Revered for their sweet, meaty flavor and smooth, juicy texture, pink beefsteak tomatoes are a fruitful gift. They have smaller seed cavities than other tomatoes, which yields a higher ratio of flesh to juice. They make ideal burger and sandwich toppers, are excellent chopped up in salads or served in a Caprese, and are undeniably delicious when enjoyed on their own.', price: 4, photo: 'https://images.pexels.com/photos/5617/red-tomato-vegetable.jpg?w=1260&h=750&dpr=2&auto=compress&cs=tinysrgb')

courgette = Product.new(name: 'Organic Green Zucchini', description: 'This flavorful squash is available at its peak all year round. It is a mild and extremely versatile vegetable. Slice, chop, stuff, or grate it. Zucchini adds a fresh garden flavor to breads, soups, and pastas, and it s great by itself as a simply sautéed side dish.', price: 2, photo: 'https://images.pexels.com/photos/128420/pexels-photo-128420.jpeg?w=1260&h=750&dpr=2&auto=compress&cs=tinysrgb')

puts "6. Assign product to farm & farm to product"
pomme.farm = johnfarm
poire.farm = paulfarm
peche.farm = georgesfarm
banane.farm = davidfarm
tomate.farm = sylvainfarm
courgette.farm = nathfarm
citron.farm = nathfarm
cerise.farm = nathfarm

puts "7. Create an order with customer + product"
sergeorder = Order.new(quantity: 7, delivery_time: '27/10/2017')
sergeorder.product = pomme
sergeorder.user = serge
sergeorder.rating = 4
sergeorder.review = "Loaded with all kinds of nutrients, apples are a great snack or food staple. Sent these to a family member during Sandy. He loved them. Crisp, tasty and a great size. Will order from this Seller again."

john.save
johnfarm.save
serge.save
pomme.save
sergeorder.save
#################
quentinorder = Order.new(quantity: 1, delivery_time: '27/11/2017')
quentinorder.product = poire
quentinorder.user = quentin
quentinorder.rating = 4
quentinorder.review = "I was hoping for more flavor, like I used to get when I bought these in Florida, These weren't very good."

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
louisorder.review = "I wish I could rave about this--the idea is really smart, and my 8yo loves it. But we've got multiple problems. First, the cover for the dip container doesn't seal very well, so more than once junior's lunchbox has come home with nut butter, etc, smeared inside. And second, the plastic used for the main body is flimsy. I ordered this barely one month ago, and it's already cracked. Because my son likes it so much we'll keep using it until it's no longer feasible, but I'm really disappointed."

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
huguesorder.review = 'This product holds a near-perfect portion of celery and peanut butter/hummus/whatever for a snack, and everyone who sees it comments on how cute it is. The bottom portion/section holds the celery, the top holds the pb/hummus/whatever. Two problems: 1. the top portion (which holds the pb/hummus/whatever) does not snap or twist tightly onto the bottom portion so it does not always stay in place, and 2. when you take the lid of the top portion off.'

david.save
davidfarm.save
hugues.save
banane.save
huguesorder.save
#######################
valouorder = Order.new(quantity: 12, delivery_time: '27/12/2017')
valouorder.product = tomate
valouorder.user = valou
valouorder.rating = 2
valouorder.review = "I am giving this as a gift to one of my daughters who is always on the go. It looks like a terrific way to carry apples and peanut butter in a neat and cute container !"

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
seborder.review = "Cute, but if your buying for your child, it’s difficult to open, even for an adult. My kindergartener can’t open either piece."

valorder = Order.new(quantity: 1, delivery_time: '07/11/2017')
valorder.product = citron
valorder.user = valou
valorder.rating = 4
valorder.review = "Wooooooh really nice, I love lemon yolotrolololol"

sergorder = Order.new(quantity: 3, delivery_time: '07/11/2017')
sergorder.product = cerise
sergorder.user = serge
sergorder.rating = 5
sergorder.review = "Many Thanks Farmland for those delicious cherries :D"

sylvainorder = Order.new(quantity: 3, delivery_time: '21/11/2017')
sylvainorder.product = courgette
sylvainorder.user = serge
sylvainorder.rating = 1
sylvainorder.review = "Cute, but if your buying for your child, it’s difficult to open, even for an adult. My kindergartener can’t open either piece."


nath.save
nathfarm.save
seb.save

courgette.save
cerise.save
citron.save

sergorder.save
seborder.save
valorder.save
sylvainorder.save
