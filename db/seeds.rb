# 0. Clean all DB
Order.destroy_all
Product.destroy_all
Farm.destroy_all
User.destroy_all

puts "1. Create user as farmer"
john = User.new(email: 'john@gmail.com', password: '123456789')
paul = User.new(email: 'paul@gmail.com', password: '123456789')
georges = User.new(email: 'georges@gmail.com', password: '123456789')

puts "2. Create farm"
johnfarm = Farm.new(name: 'La ferme de John', address: 'Bordeaux')
paulfarm = Farm.new(name: 'La ferme de Paul', address: 'Talence')
georgesfarm = Farm.new(name: 'La ferme de Georges', address: 'Pessac')

puts "3. Assign user to farm"
johnfarm.user = john
paulfarm.user = paul
georgesfarm.user = georges

puts "4. Create user as customer"
serge = User.new(email: 'serge@gmail.com', password: '123456789')
quentin = User.new(email: 'quentin@gmail.com', password: '123456789')
louis = User.new(email: 'louis@gmail.com', password: '123456789')

puts "5. Create a product"
pomme = Product.new(name: 'pomme', price: 5)
peche = Product.new(name: 'peche', price: 1)
poire = Product.new(name: 'poire', price: 11)

puts "6. Assign product to farm & farm to product"
pomme.farm = johnfarm
poire.farm = paulfarm
peche.farm = georgesfarm


puts "7. Create an order with customer + product"
sergeorder = Order.new(quantity: 1)
sergeorder.product = pomme
sergeorder.user = serge

john.save
johnfarm.save
serge.save
pomme.save
sergeorder.save
#################
quentinorder = Order.new(quantity: 1)
quentinorder.product = poire
quentinorder.user = quentin

paul.save
paulfarm.save
quentin.save
poire.save
quentinorder.save
#################
louisorder = Order.new(quantity: 1)
louisorder.product = peche
louisorder.user = louis

georges.save
georgesfarm.save
louis.save
peche.save
louisorder.save


#### Add default photo to farm, ex :
# goo.gl/S2K83Y
# goo.gl/WNRpUv
# goo.gl/vNzv2k
