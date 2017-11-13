# ## Generate Seeds

# 0. Clean all DB
Product.destroy_all
Order.destroy_all
Farm.destroy_all
User.destroy_all


# 1. Create user as farmer
uf = User.new(email: "john@gmail.com", password: "123456789")

# 2. Create farm
f = Farm.new(name:"La ferme de John", address: "Bordeaux")

# 3. Assign user to farm
f.user = uf

# 4. Create user as customer
uc = User.new(email: "Serge@gmail.com", password: "123456789")

# 5. Create a product
p = Product.new(name: "pomme", price: 5)

# 6. Assign product to farm
p.farm = f

# 7. Create an order with customer + product
o = Order.new(quantity: 1)
o.product = p
o.user = uc

uf.save
f.save
uc.save
p.save
o.save



# # 1. Create user as farmer
# uf_first = User.create!(email: "john@gmail.com", password: "123456789")
#
# # 2. Create farm
# f_first = Farm.create!(name:"La ferme de John", address: "Bordeaux")
#
# # 3. Assign user to farm
# f_first.user = uf_first
#
# # 4. Create user as customer
# uc_first = User.create!(email: "Serge@gmail.com", password: "123456789")
#
# # 5. Create a product
# p_first = Product.create!(name: "pomme", price: 5)
#
# # 6. Assign product to farm
# p_first.farm = f_first
#
# # 7. Create an order with customer + product
# o_first = Order.create!(quantity: 1)
# o_first.product = p_first
# o_first.user = uc_first
