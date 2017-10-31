# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def asign_role(role,users)
  users.each do |user|
    user.add_role role
  end
end

# Creating Roles
if Role.count == 0
	Role.create([{name: 'admin'},{name: 'comercial'},{name: 'almacen'}])
	p 'Roles creados satisfactoriamente'
end

if User.count == 0
	admin = User.create(:email => 'admin@ticketeg.com', :password => 'admin123')
	admin.add_role 'admin'
	admin = User.create(:email => 'rquiroz@ticketeg.com', :password => 'roger123')
	admin.add_role 'admin'

	comercial = User.create(:email => 'comercial@ticketeg.com', :password => 'comercial123')
	comercial.add_role 'comercial'

	almacen = User.create(:email => 'almacen@ticketeg.com', :password => 'almacen123')
	almacen.add_role 'almacen'
end

if TypeOfProduct.count == 0
	TypeOfProduct.create(name: "Ticket")
	TypeOfProduct.create(name: "Manilla")
	p "Tipos de Productos creados satisfactoriamente"
end

if Product.count == 0
	Product.create(name: "Verde", type_of_product: TypeOfProduct.first)
	Product.create(name: "Rojo", type_of_product: TypeOfProduct.first)
	Product.create(name: "Amarillo", type_of_product: TypeOfProduct.first)
	p "Productos creados satisfactoriamente"
end

if TypeOfEvent.count == 0
	TypeOfEvent.create(name: "Default")
	p "Tipo de Evento creado satisfactoriamente"
end

if PersonalInCharge.count == 0
	PersonalInCharge.create(name: "Erick", last_name: "Sánchez", ocupation: "Impresor")
	PersonalInCharge.create(name: "Miguel", last_name: "Mercado", ocupation: "Impresor")
	p "Personal creado satisfactoriamente"
end
