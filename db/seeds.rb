# ## Generate Seeds

# 0. Clean all DB
Product.destroy_all
Order.destroy_all
Farm.destroy_all
User.destroy_all


# # 1. Create user as farmer
# john = User.new(email: "john@gmail.com", password: "123456789")
#
#
#
#
# # 2. Create farm
# johnfarm = Farm.new(name:"La ferme de John", address: "Bordeaux")
#
# # 3. Assign user to farm
# johnfarm.user = john
#
# # 4. Create user as customer
# serge = User.new(email: "Serge@gmail.com", password: "123456789")
#
# # 5. Create a product
# pomme = Product.new(name: "pomme", price: 5)
#
# # 6. Assign product to farm
# pomme.farm = johnfarm
#
# # 7. Create an order with customer + product
# firstorder = Order.new(quantity: 1)
# firstorder.product = pomme
# firstorder.user = serge
#
# john.save
# johnfarm.save
# serge.save
# pomme.save
# firstorder.save



# 1. Create user as farmer
john = User.create!(email: "john@gmail.com", password: "123456789")

# 2. Create farm
johnfarm = Farm.create!(name:"La ferme de John", address: "Bordeaux")

# 3. Assign user to farm
johnfarm.user = john

# 4. Create user as customer
serge = User.create!(email: "Serge@gmail.com", password: "123456789")

# 5. Create a product
pomme = Product.create!(name: "pomme", price: 5)

# 6. Assign product to farm
pomme.farm = johnfarm

# 7. Create an order with customer + product
firstorder = Order.create!(quantity: 1)
firstorder.product = pomme
firstorder.user = serge
