# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.create(name:"Central", location:"Praça do Relógio Solar, Travessa 8, 300")
Restaurant.create(name:"Física" , location:"Rua do Matão, 1371")
Restaurant.create(name:"Química", location:"Av. Prof. Lineu Prestes, 748")
Restaurant.create(name:"Prefeitura (PCO)", location:"Av. Prof. Almeida Prado, 1280")

Food.create(name: "Tomate com PVT", category: "PVT", restaurant_id: 1)
Food.create(name: "Hambúrguer a Pizzaiolo", category: "Carne", restaurant_id: 3)
Food.create(name: "Frango Empanado", category: "Carne", restaurant_id: 2)
Food.create(name: "Arroz", category: "Básico", restaurant_id: 4)
Food.create(name: "Salada de alface", category: "Salada", restaurant_id: 1)
Food.create(name: "Macarrão ao molho sugo", category: "Acompanhamento", restaurant_id: 2)
Food.create(name: "Melão", category: "Sobremesa", restaurant_id: 3)

Record.create(date: "16/05/2018", meal: "Almoço", food_id: 1)
Record.create(date: "16/05/2018", meal: "Almoço", food_id: 2)
Record.create(date: "10/04/2018", meal: "Almoço", food_id: 3)
Record.create(date: "11/05/2018", meal: "Janta", food_id: 4)
Record.create(date: "16/05/2018", meal: "Janta", food_id: 5)
Record.create(date: "16/05/2018", meal: "Janta", food_id: 6)
Record.create(date: "16/05/2018", meal: "Janta", food_id: 7)
