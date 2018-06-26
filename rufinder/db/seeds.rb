# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.create(name:"Central", location:"Praça do Relógio Solar, Travessa 8, 300", horario: 
	"Segunda à sexta-feira: Café: 07:00 às 08:30 / Almoço: 11:15 às 14:15 / Jantar: 17:30 às 19:45 , Sábado: Café: 07:30 às 09:00/ Almoço: 11:15 às 14:15 ,
	Domingo: Café: 08:00 às 09:30 / Almoço: 12:00 às 14:15", telefone: "(11) 3091-3318")
Restaurant.create(name:"Física" , location:"Rua do Matão, 1371", horario: "Segunda à sexta-feira: Almoço: 11:15 às 14:15 / Jantar: 17:30 às 19:45", 
	telefone: "(11) 3091-6711")
Restaurant.create(name:"Química", location:"Av. Prof. Lineu Prestes, 748", horario: "Segunda à sexta-feira: Almoço: 11:00 às 14:00 / Jantar: 17:30 às 19:45", 
	telefone: "(11) 3034-1993")
Restaurant.create(name:"Prefeitura (PCO)", location:"Av. Prof. Almeida Prado, 1280", horario: "Segunda à sexta-feira: Almoço: 11:15 às 14:15", 
	telefone: "(11) 3091-0495")
