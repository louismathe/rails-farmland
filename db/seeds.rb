# ## Generate Seeds

# 0. Clean all DB
Product.destroy_all
Order.destroy_all
Farm.destroy_all
User.destroy_all

# 1. Create user as farmer
uf  = User.new(email: "john@gmail.com", password: "123456789")

# 2. Create farm
f = Farm.new(name:"La ferme de John", address: "Bordeaux")

# 3. Assign user to farm
f.user = uf

# 4. Create user as customer
uc  = User.new(email: "paul@gmail.com", password: "123456789")

# 5. Create a product
p = Product.new(name: "tomate", price: "1")

# 6. Assign product to farm
p.farm = f

# 7. Create an order with customer + product
o = Order.new()
