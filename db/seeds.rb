# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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
	PersonalInCharge.create(name: "Erick", last_name: "P.", ocupation: "Impresor")
	p "Personal creado satisfactoriamente"
end
