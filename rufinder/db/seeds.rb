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

Food.create(name:"Arroz", category:"Básico",restaurant_id:"1")
Record.create(date:"2018-05-14", meal:"Almoço", food_id:"1")

Food.create(name:"Feijão preto", category:"Básico",restaurant_id:"1")
Record.create(date:"2018-05-14", meal:"Almoço", food_id:"2")

Food.create(name:"Arroz integral", category:"Básico",restaurant_id:"1")
Record.create(date:"2018-05-14", meal:"Almoço", food_id:"3")

Food.create(name:"Lombo assado com molho de limão", category:"Carne",restaurant_id:"1")
Record.create(date:"2018-05-14", meal:"Almoço", food_id:"4")

Food.create(name:"PVT com espinafre", category:"PVT",restaurant_id:"1")
Record.create(date:"2018-05-14", meal:"Almoço", food_id:"5")

Food.create(name:"Farofa", category:"Acompanhamento",restaurant_id:"1")
Record.create(date:"2018-05-14", meal:"Almoço", food_id:"6")

Food.create(name:"Salada de repolho", category:"Salada",restaurant_id:"1")
Record.create(date:"2018-05-14", meal:"Almoço", food_id:"7")

Food.create(name:"Laranja", category:"Sobremesa",restaurant_id:"1")
Record.create(date:"2018-05-14", meal:"Almoço", food_id:"8")

Food.create(name:"Minipão", category:"Básico",restaurant_id:"1")
Record.create(date:"2018-05-14", meal:"Almoço", food_id:"9")

Food.create(name:"Refresco", category:"Básico",restaurant_id:"1")
Record.create(date:"2018-05-14", meal:"Almoço", food_id:"10")

Record.create(date:"2018-05-14", meal:"Janta", food_id:"1")

Record.create(date:"2018-05-14", meal:"Janta", food_id:"2")

Record.create(date:"2018-05-14", meal:"Janta", food_id:"3")

Food.create(name:"Carne assada", category:"Carne",restaurant_id:"1")
Record.create(date:"2018-05-14", meal:"Janta", food_id:"11")

Food.create(name:"Guisado de batata", category:"PVT",restaurant_id:"1")
Record.create(date:"2018-05-14", meal:"Janta", food_id:"12")

Food.create(name:"Berinjela à italiana", category:"Acompanhamento",restaurant_id:"1")
Record.create(date:"2018-05-14", meal:"Janta", food_id:"13")

Food.create(name:"Salada de acelga", category:"Salada",restaurant_id:"1")
Record.create(date:"2018-05-14", meal:"Janta", food_id:"14")

Food.create(name:"Maçã", category:"Sobremesa",restaurant_id:"1")
Record.create(date:"2018-05-14", meal:"Janta", food_id:"15")

Record.create(date:"2018-05-14", meal:"Janta", food_id:"9")

Record.create(date:"2018-05-14", meal:"Janta", food_id:"10")

Record.create(date:"2018-05-15", meal:"Almoço", food_id:"1")

Food.create(name:"Feijão", category:"Básico",restaurant_id:"1")
Record.create(date:"2018-05-15", meal:"Almoço", food_id:"16")

Record.create(date:"2018-05-15", meal:"Almoço", food_id:"3")

Food.create(name:"Bife de contrafilé com molho vinagrete", category:"Carne",restaurant_id:"1")
Record.create(date:"2018-05-15", meal:"Almoço", food_id:"17")

Food.create(name:"PVT com vinagrete", category:"PVT",restaurant_id:"1")
Record.create(date:"2018-05-15", meal:"Almoço", food_id:"18")

Food.create(name:"Escarola à provençal", category:"Acompanhamento",restaurant_id:"1")
Record.create(date:"2018-05-15", meal:"Almoço", food_id:"19")

Food.create(name:"Salada de pepino", category:"Salada",restaurant_id:"1")
Record.create(date:"2018-05-15", meal:"Almoço", food_id:"20")

Food.create(name:"Doce de leite", category:"Sobremesa",restaurant_id:"1")
Record.create(date:"2018-05-15", meal:"Almoço", food_id:"21")

Record.create(date:"2018-05-15", meal:"Almoço", food_id:"9")

Record.create(date:"2018-05-15", meal:"Almoço", food_id:"10")

Record.create(date:"2018-05-15", meal:"Janta", food_id:"1")

Record.create(date:"2018-05-15", meal:"Janta", food_id:"16")

Record.create(date:"2018-05-15", meal:"Janta", food_id:"3")

Food.create(name:"Ovos mexidos", category:"Carne",restaurant_id:"1")
Record.create(date:"2018-05-15", meal:"Janta", food_id:"22")

Food.create(name:"Escarola gratinada", category:"PVT",restaurant_id:"1")
Record.create(date:"2018-05-15", meal:"Janta", food_id:"23")

Food.create(name:"Batata corada", category:"Acompanhamento",restaurant_id:"1")
Record.create(date:"2018-05-15", meal:"Janta", food_id:"24")

Record.create(date:"2018-05-15", meal:"Janta", food_id:"7")

Food.create(name:"Mexerica", category:"Sobremesa",restaurant_id:"1")
Record.create(date:"2018-05-15", meal:"Janta", food_id:"25")

Record.create(date:"2018-05-15", meal:"Janta", food_id:"9")

Record.create(date:"2018-05-15", meal:"Janta", food_id:"10")

Record.create(date:"2018-05-16", meal:"Almoço", food_id:"1")

Record.create(date:"2018-05-16", meal:"Almoço", food_id:"16")

Record.create(date:"2018-05-16", meal:"Almoço", food_id:"3")

Food.create(name:"Filé de tilápia com molho mostarda", category:"Carne",restaurant_id:"1")
Record.create(date:"2018-05-16", meal:"Almoço", food_id:"26")

Food.create(name:"PVT com brócolis", category:"PVT",restaurant_id:"1")
Record.create(date:"2018-05-16", meal:"Almoço", food_id:"27")

Food.create(name:"Cuscuz", category:"Acompanhamento",restaurant_id:"1")
Record.create(date:"2018-05-16", meal:"Almoço", food_id:"28")

Food.create(name:"Salada de almeirão", category:"Salada",restaurant_id:"1")
Record.create(date:"2018-05-16", meal:"Almoço", food_id:"29")

Record.create(date:"2018-05-16", meal:"Almoço", food_id:"8")

Record.create(date:"2018-05-16", meal:"Almoço", food_id:"9")

Record.create(date:"2018-05-16", meal:"Almoço", food_id:"10")

Record.create(date:"2018-05-16", meal:"Janta", food_id:"1")

Record.create(date:"2018-05-16", meal:"Janta", food_id:"16")

Record.create(date:"2018-05-16", meal:"Janta", food_id:"3")

Food.create(name:"Quibe", category:"Carne",restaurant_id:"1")
Record.create(date:"2018-05-16", meal:"Janta", food_id:"30")

Food.create(name:"Quibe de PVT", category:"PVT",restaurant_id:"1")
Record.create(date:"2018-05-16", meal:"Janta", food_id:"31")

Food.create(name:"Abóbora à italiana", category:"Acompanhamento",restaurant_id:"1")
Record.create(date:"2018-05-16", meal:"Janta", food_id:"32")

Food.create(name:"Salada de alface", category:"Salada",restaurant_id:"1")
Record.create(date:"2018-05-16", meal:"Janta", food_id:"33")

Record.create(date:"2018-05-16", meal:"Janta", food_id:"15")

Record.create(date:"2018-05-16", meal:"Janta", food_id:"9")

Record.create(date:"2018-05-16", meal:"Janta", food_id:"10")

Record.create(date:"2018-05-17", meal:"Almoço", food_id:"1")

Record.create(date:"2018-05-17", meal:"Almoço", food_id:"16")

Record.create(date:"2018-05-17", meal:"Almoço", food_id:"3")

Food.create(name:"Hambúrguer com molho barbecue", category:"Carne",restaurant_id:"1")
Record.create(date:"2018-05-17", meal:"Almoço", food_id:"34")

Food.create(name:"PVT com alho-poró", category:"PVT",restaurant_id:"1")
Record.create(date:"2018-05-17", meal:"Almoço", food_id:"35")

Food.create(name:"Vagem com cenoura", category:"Acompanhamento",restaurant_id:"1")
Record.create(date:"2018-05-17", meal:"Almoço", food_id:"36")

Record.create(date:"2018-05-17", meal:"Almoço", food_id:"14")

Food.create(name:"Banana", category:"Sobremesa",restaurant_id:"1")
Record.create(date:"2018-05-17", meal:"Almoço", food_id:"37")

Record.create(date:"2018-05-17", meal:"Almoço", food_id:"9")

Record.create(date:"2018-05-17", meal:"Almoço", food_id:"10")

Record.create(date:"2018-05-17", meal:"Janta", food_id:"1")

Record.create(date:"2018-05-17", meal:"Janta", food_id:"16")

Record.create(date:"2018-05-17", meal:"Janta", food_id:"3")

Food.create(name:"Frango empanado", category:"Carne",restaurant_id:"1")
Record.create(date:"2018-05-17", meal:"Janta", food_id:"38")

Food.create(name:"PVT à primavera", category:"PVT",restaurant_id:"1")
Record.create(date:"2018-05-17", meal:"Janta", food_id:"39")

Record.create(date:"2018-05-17", meal:"Janta", food_id:"19")

Record.create(date:"2018-05-17", meal:"Janta", food_id:"20")

Food.create(name:"Goiabada", category:"Sobremesa",restaurant_id:"1")
Record.create(date:"2018-05-17", meal:"Janta", food_id:"40")

Record.create(date:"2018-05-17", meal:"Janta", food_id:"9")

Record.create(date:"2018-05-17", meal:"Janta", food_id:"10")

Record.create(date:"2018-05-18", meal:"Almoço", food_id:"1")

Record.create(date:"2018-05-18", meal:"Almoço", food_id:"16")

Record.create(date:"2018-05-18", meal:"Almoço", food_id:"3")

Food.create(name:"Carne picada à caipira", category:"Carne",restaurant_id:"1")
Record.create(date:"2018-05-18", meal:"Almoço", food_id:"41")

Food.create(name:"PVT caipira", category:"PVT",restaurant_id:"1")
Record.create(date:"2018-05-18", meal:"Almoço", food_id:"42")

Food.create(name:"Chuchu refogado", category:"Acompanhamento",restaurant_id:"1")
Record.create(date:"2018-05-18", meal:"Almoço", food_id:"43")

Food.create(name:"Salada de escarola", category:"Salada",restaurant_id:"1")
Record.create(date:"2018-05-18", meal:"Almoço", food_id:"44")

Food.create(name:"Gelatina", category:"Sobremesa",restaurant_id:"1")
Record.create(date:"2018-05-18", meal:"Almoço", food_id:"45")

Record.create(date:"2018-05-18", meal:"Almoço", food_id:"9")

Record.create(date:"2018-05-18", meal:"Almoço", food_id:"10")

Record.create(date:"2018-05-18", meal:"Janta", food_id:"1")

Record.create(date:"2018-05-18", meal:"Janta", food_id:"16")

Record.create(date:"2018-05-18", meal:"Janta", food_id:"3")

Food.create(name:"Cupim assado", category:"Carne",restaurant_id:"1")
Record.create(date:"2018-05-18", meal:"Janta", food_id:"46")

Food.create(name:"PVT com ervilhas", category:"PVT",restaurant_id:"1")
Record.create(date:"2018-05-18", meal:"Janta", food_id:"47")

Food.create(name:"Legumes mistos", category:"Acompanhamento",restaurant_id:"1")
Record.create(date:"2018-05-18", meal:"Janta", food_id:"48")

Record.create(date:"2018-05-18", meal:"Janta", food_id:"33")

Record.create(date:"2018-05-18", meal:"Janta", food_id:"8")

Record.create(date:"2018-05-18", meal:"Janta", food_id:"9")

Record.create(date:"2018-05-18", meal:"Janta", food_id:"10")

Record.create(date:"2018-05-19", meal:"Almoço", food_id:"1")

Record.create(date:"2018-05-19", meal:"Almoço", food_id:"16")

Record.create(date:"2018-05-19", meal:"Almoço", food_id:"3")

Food.create(name:"Iscas de carne à napolitana", category:"Carne",restaurant_id:"1")
Record.create(date:"2018-05-19", meal:"Almoço", food_id:"49")

Food.create(name:"PVT à napolitana", category:"PVT",restaurant_id:"1")
Record.create(date:"2018-05-19", meal:"Almoço", food_id:"50")

Food.create(name:"Mandioca com salsa", category:"Acompanhamento",restaurant_id:"1")
Record.create(date:"2018-05-19", meal:"Almoço", food_id:"51")

Record.create(date:"2018-05-19", meal:"Almoço", food_id:"14")

Record.create(date:"2018-05-19", meal:"Almoço", food_id:"37")

Record.create(date:"2018-05-19", meal:"Almoço", food_id:"9")

Record.create(date:"2018-05-19", meal:"Almoço", food_id:"10")

Food.create(name:"Arroz", category:"Básico",restaurant_id:"4")
Record.create(date:"2018-05-14", meal:"Almoço", food_id:"52")

Food.create(name:"Feijão preto", category:"Básico",restaurant_id:"4")
Record.create(date:"2018-05-14", meal:"Almoço", food_id:"53")

Food.create(name:"Arroz integral", category:"Básico",restaurant_id:"4")
Record.create(date:"2018-05-14", meal:"Almoço", food_id:"54")

Food.create(name:"Cubos de frango com molho ferrugem", category:"Carne",restaurant_id:"4")
Record.create(date:"2018-05-14", meal:"Almoço", food_id:"55")

Food.create(name:"PVT com lentilha", category:"PVT",restaurant_id:"4")
Record.create(date:"2018-05-14", meal:"Almoço", food_id:"56")

Food.create(name:"Couve-flor gratinado", category:"Acompanhamento",restaurant_id:"4")
Record.create(date:"2018-05-14", meal:"Almoço", food_id:"57")

Food.create(name:"Salada de catalonha", category:"Salada",restaurant_id:"4")
Record.create(date:"2018-05-14", meal:"Almoço", food_id:"58")

Food.create(name:"Sagu ao vinho", category:"Sobremesa",restaurant_id:"4")
Record.create(date:"2018-05-14", meal:"Almoço", food_id:"59")

Food.create(name:"Minipão", category:"Básico",restaurant_id:"4")
Record.create(date:"2018-05-14", meal:"Almoço", food_id:"60")

Food.create(name:"Refresco", category:"Básico",restaurant_id:"4")
Record.create(date:"2018-05-14", meal:"Almoço", food_id:"61")

Record.create(date:"2018-05-15", meal:"Almoço", food_id:"52")

Food.create(name:"Feijão", category:"Básico",restaurant_id:"4")
Record.create(date:"2018-05-15", meal:"Almoço", food_id:"62")

Record.create(date:"2018-05-15", meal:"Almoço", food_id:"54")

Food.create(name:"Bife de contrafilé", category:"Carne",restaurant_id:"4")
Record.create(date:"2018-05-15", meal:"Almoço", food_id:"63")

Food.create(name:"Quibe de PVT", category:"PVT",restaurant_id:"4")
Record.create(date:"2018-05-15", meal:"Almoço", food_id:"64")

Food.create(name:"Purê de batata", category:"Acompanhamento",restaurant_id:"4")
Record.create(date:"2018-05-15", meal:"Almoço", food_id:"65")

Food.create(name:"Salada de alface", category:"Salada",restaurant_id:"4")
Record.create(date:"2018-05-15", meal:"Almoço", food_id:"66")

Food.create(name:"Melão", category:"Sobremesa",restaurant_id:"4")
Record.create(date:"2018-05-15", meal:"Almoço", food_id:"67")

Record.create(date:"2018-05-15", meal:"Almoço", food_id:"60")

Record.create(date:"2018-05-15", meal:"Almoço", food_id:"61")

Record.create(date:"2018-05-16", meal:"Almoço", food_id:"52")

Record.create(date:"2018-05-16", meal:"Almoço", food_id:"62")

Record.create(date:"2018-05-16", meal:"Almoço", food_id:"54")

Food.create(name:"Hambúrguer com molho madeira", category:"Carne",restaurant_id:"4")
Record.create(date:"2018-05-16", meal:"Almoço", food_id:"68")

Food.create(name:"Almôndegas de PVT", category:"PVT",restaurant_id:"4")
Record.create(date:"2018-05-16", meal:"Almoço", food_id:"69")

Food.create(name:"Macarrão à primavera", category:"Acompanhamento",restaurant_id:"4")
Record.create(date:"2018-05-16", meal:"Almoço", food_id:"70")

Food.create(name:"Salada de rúcula", category:"Salada",restaurant_id:"4")
Record.create(date:"2018-05-16", meal:"Almoço", food_id:"71")

Food.create(name:"Gelado de abacaxi", category:"Sobremesa",restaurant_id:"4")
Record.create(date:"2018-05-16", meal:"Almoço", food_id:"72")

Record.create(date:"2018-05-16", meal:"Almoço", food_id:"60")

Record.create(date:"2018-05-16", meal:"Almoço", food_id:"61")

Record.create(date:"2018-05-17", meal:"Almoço", food_id:"52")

Record.create(date:"2018-05-17", meal:"Almoço", food_id:"62")

Record.create(date:"2018-05-17", meal:"Almoço", food_id:"54")

Food.create(name:"Isca de frango com molho de tomate", category:"Carne",restaurant_id:"4")
Record.create(date:"2018-05-17", meal:"Almoço", food_id:"73")

Food.create(name:"PVT com vagem", category:"PVT",restaurant_id:"4")
Record.create(date:"2018-05-17", meal:"Almoço", food_id:"74")

Food.create(name:"Abobrinha com pimentões", category:"Acompanhamento",restaurant_id:"4")
Record.create(date:"2018-05-17", meal:"Almoço", food_id:"75")

Record.create(date:"2018-05-17", meal:"Almoço", food_id:"66")

Food.create(name:"Maçã", category:"Sobremesa",restaurant_id:"4")
Record.create(date:"2018-05-17", meal:"Almoço", food_id:"76")

Record.create(date:"2018-05-17", meal:"Almoço", food_id:"60")

Record.create(date:"2018-05-17", meal:"Almoço", food_id:"61")

Record.create(date:"2018-05-18", meal:"Almoço", food_id:"52")

Record.create(date:"2018-05-18", meal:"Almoço", food_id:"62")

Record.create(date:"2018-05-18", meal:"Almoço", food_id:"54")

Food.create(name:"Bife grelhado com molho roti", category:"Carne",restaurant_id:"4")
Record.create(date:"2018-05-18", meal:"Almoço", food_id:"77")

Food.create(name:"PVT com escarola", category:"PVT",restaurant_id:"4")
Record.create(date:"2018-05-18", meal:"Almoço", food_id:"78")

Food.create(name:"Berinjela acebolada", category:"Acompanhamento",restaurant_id:"4")
Record.create(date:"2018-05-18", meal:"Almoço", food_id:"79")

Food.create(name:"Salada de almeirão", category:"Salada",restaurant_id:"4")
Record.create(date:"2018-05-18", meal:"Almoço", food_id:"80")

Food.create(name:"Doce de banana", category:"Sobremesa",restaurant_id:"4")
Record.create(date:"2018-05-18", meal:"Almoço", food_id:"81")

Record.create(date:"2018-05-18", meal:"Almoço", food_id:"60")

Record.create(date:"2018-05-18", meal:"Almoço", food_id:"61")

Food.create(name:"Arroz", category:"Básico",restaurant_id:"2")
Record.create(date:"2018-05-14", meal:"Almoço", food_id:"82")

Food.create(name:"Feijão preto", category:"Básico",restaurant_id:"2")
Record.create(date:"2018-05-14", meal:"Almoço", food_id:"83")

Food.create(name:"Arroz integral", category:"Básico",restaurant_id:"2")
Record.create(date:"2018-05-14", meal:"Almoço", food_id:"84")

Food.create(name:"Lombo assado com molho de limão", category:"Carne",restaurant_id:"2")
Record.create(date:"2018-05-14", meal:"Almoço", food_id:"85")

Food.create(name:"PVT com espinafre", category:"PVT",restaurant_id:"2")
Record.create(date:"2018-05-14", meal:"Almoço", food_id:"86")

Food.create(name:"Farofa", category:"Acompanhamento",restaurant_id:"2")
Record.create(date:"2018-05-14", meal:"Almoço", food_id:"87")

Food.create(name:"Salada de repolho", category:"Salada",restaurant_id:"2")
Record.create(date:"2018-05-14", meal:"Almoço", food_id:"88")

Food.create(name:"Laranja", category:"Sobremesa",restaurant_id:"2")
Record.create(date:"2018-05-14", meal:"Almoço", food_id:"89")

Food.create(name:"Minipão", category:"Básico",restaurant_id:"2")
Record.create(date:"2018-05-14", meal:"Almoço", food_id:"90")

Food.create(name:"Refresco", category:"Básico",restaurant_id:"2")
Record.create(date:"2018-05-14", meal:"Almoço", food_id:"91")

Record.create(date:"2018-05-14", meal:"Janta", food_id:"82")

Record.create(date:"2018-05-14", meal:"Janta", food_id:"83")

Record.create(date:"2018-05-14", meal:"Janta", food_id:"84")

Food.create(name:"Quibe", category:"Carne",restaurant_id:"2")
Record.create(date:"2018-05-14", meal:"Janta", food_id:"92")

Food.create(name:"PVT com batata", category:"PVT",restaurant_id:"2")
Record.create(date:"2018-05-14", meal:"Janta", food_id:"93")

Food.create(name:"Berinjela à grega", category:"Acompanhamento",restaurant_id:"2")
Record.create(date:"2018-05-14", meal:"Janta", food_id:"94")

Food.create(name:"Salada de acelga", category:"Salada",restaurant_id:"2")
Record.create(date:"2018-05-14", meal:"Janta", food_id:"95")

Food.create(name:"Maçã", category:"Sobremesa",restaurant_id:"2")
Record.create(date:"2018-05-14", meal:"Janta", food_id:"96")

Record.create(date:"2018-05-14", meal:"Janta", food_id:"90")

Record.create(date:"2018-05-14", meal:"Janta", food_id:"91")

Record.create(date:"2018-05-15", meal:"Almoço", food_id:"82")

Food.create(name:"Feijão", category:"Básico",restaurant_id:"2")
Record.create(date:"2018-05-15", meal:"Almoço", food_id:"97")

Record.create(date:"2018-05-15", meal:"Almoço", food_id:"84")

Food.create(name:"Bife de contrafilé com molho vinagrete", category:"Carne",restaurant_id:"2")
Record.create(date:"2018-05-15", meal:"Almoço", food_id:"98")

Food.create(name:"PVT com vinagrete", category:"PVT",restaurant_id:"2")
Record.create(date:"2018-05-15", meal:"Almoço", food_id:"99")

Food.create(name:"Couve à provençal", category:"Acompanhamento",restaurant_id:"2")
Record.create(date:"2018-05-15", meal:"Almoço", food_id:"100")

Food.create(name:"Salada de pepino", category:"Salada",restaurant_id:"2")
Record.create(date:"2018-05-15", meal:"Almoço", food_id:"101")

Food.create(name:"Doce de leite", category:"Sobremesa",restaurant_id:"2")
Record.create(date:"2018-05-15", meal:"Almoço", food_id:"102")

Record.create(date:"2018-05-15", meal:"Almoço", food_id:"90")

Record.create(date:"2018-05-15", meal:"Almoço", food_id:"91")

Record.create(date:"2018-05-15", meal:"Janta", food_id:"82")

Record.create(date:"2018-05-15", meal:"Janta", food_id:"97")

Record.create(date:"2018-05-15", meal:"Janta", food_id:"84")

Food.create(name:"Ovos mexidos", category:"Carne",restaurant_id:"2")
Record.create(date:"2018-05-15", meal:"Janta", food_id:"103")

Food.create(name:"PVT com vagem", category:"PVT",restaurant_id:"2")
Record.create(date:"2018-05-15", meal:"Janta", food_id:"104")

Food.create(name:"Batata sauté", category:"Acompanhamento",restaurant_id:"2")
Record.create(date:"2018-05-15", meal:"Janta", food_id:"105")

Food.create(name:"Salada de escarola", category:"Salada",restaurant_id:"2")
Record.create(date:"2018-05-15", meal:"Janta", food_id:"106")

Food.create(name:"Mexerica", category:"Sobremesa",restaurant_id:"2")
Record.create(date:"2018-05-15", meal:"Janta", food_id:"107")

Record.create(date:"2018-05-15", meal:"Janta", food_id:"90")

Record.create(date:"2018-05-15", meal:"Janta", food_id:"91")

Record.create(date:"2018-05-16", meal:"Almoço", food_id:"82")

Record.create(date:"2018-05-16", meal:"Almoço", food_id:"97")

Record.create(date:"2018-05-16", meal:"Almoço", food_id:"84")

Food.create(name:"Filé de tilápia com molho mostarda", category:"Carne",restaurant_id:"2")
Record.create(date:"2018-05-16", meal:"Almoço", food_id:"108")

Food.create(name:"PVT com brócolis", category:"PVT",restaurant_id:"2")
Record.create(date:"2018-05-16", meal:"Almoço", food_id:"109")

Food.create(name:"Cuscuz", category:"Acompanhamento",restaurant_id:"2")
Record.create(date:"2018-05-16", meal:"Almoço", food_id:"110")

Food.create(name:"Salada de alface", category:"Salada",restaurant_id:"2")
Record.create(date:"2018-05-16", meal:"Almoço", food_id:"111")

Food.create(name:"Banana", category:"Sobremesa",restaurant_id:"2")
Record.create(date:"2018-05-16", meal:"Almoço", food_id:"112")

Record.create(date:"2018-05-16", meal:"Almoço", food_id:"90")

Record.create(date:"2018-05-16", meal:"Almoço", food_id:"91")

Record.create(date:"2018-05-16", meal:"Janta", food_id:"82")

Record.create(date:"2018-05-16", meal:"Janta", food_id:"97")

Record.create(date:"2018-05-16", meal:"Janta", food_id:"84")

Food.create(name:"Carne assada", category:"Carne",restaurant_id:"2")
Record.create(date:"2018-05-16", meal:"Janta", food_id:"113")

Food.create(name:"PVT com moyashi", category:"PVT",restaurant_id:"2")
Record.create(date:"2018-05-16", meal:"Janta", food_id:"114")

Food.create(name:"Abóbora à italiana", category:"Acompanhamento",restaurant_id:"2")
Record.create(date:"2018-05-16", meal:"Janta", food_id:"115")

Record.create(date:"2018-05-16", meal:"Janta", food_id:"95")

Record.create(date:"2018-05-16", meal:"Janta", food_id:"89")

Record.create(date:"2018-05-16", meal:"Janta", food_id:"90")

Record.create(date:"2018-05-16", meal:"Janta", food_id:"91")

Record.create(date:"2018-05-17", meal:"Almoço", food_id:"82")

Record.create(date:"2018-05-17", meal:"Almoço", food_id:"97")

Record.create(date:"2018-05-17", meal:"Almoço", food_id:"84")

Food.create(name:"Hambúrguer com molho barbecue", category:"Carne",restaurant_id:"2")
Record.create(date:"2018-05-17", meal:"Almoço", food_id:"116")

Food.create(name:"PVT com alho-poró", category:"PVT",restaurant_id:"2")
Record.create(date:"2018-05-17", meal:"Almoço", food_id:"117")

Food.create(name:"Vagem com cenoura", category:"Acompanhamento",restaurant_id:"2")
Record.create(date:"2018-05-17", meal:"Almoço", food_id:"118")

Food.create(name:"Salada de almeirão", category:"Salada",restaurant_id:"2")
Record.create(date:"2018-05-17", meal:"Almoço", food_id:"119")

Record.create(date:"2018-05-17", meal:"Almoço", food_id:"96")

Record.create(date:"2018-05-17", meal:"Almoço", food_id:"90")

Record.create(date:"2018-05-17", meal:"Almoço", food_id:"91")

Record.create(date:"2018-05-17", meal:"Janta", food_id:"82")

Record.create(date:"2018-05-17", meal:"Janta", food_id:"97")

Record.create(date:"2018-05-17", meal:"Janta", food_id:"84")

Food.create(name:"Frango empanado", category:"Carne",restaurant_id:"2")
Record.create(date:"2018-05-17", meal:"Janta", food_id:"120")

Food.create(name:"PVT à primavera", category:"PVT",restaurant_id:"2")
Record.create(date:"2018-05-17", meal:"Janta", food_id:"121")

Food.create(name:"Escarola à provençal", category:"Acompanhamento",restaurant_id:"2")
Record.create(date:"2018-05-17", meal:"Janta", food_id:"122")

Food.create(name:"Salada de beterraba", category:"Salada",restaurant_id:"2")
Record.create(date:"2018-05-17", meal:"Janta", food_id:"123")

Food.create(name:"Goiabada", category:"Sobremesa",restaurant_id:"2")
Record.create(date:"2018-05-17", meal:"Janta", food_id:"124")

Record.create(date:"2018-05-17", meal:"Janta", food_id:"90")

Record.create(date:"2018-05-17", meal:"Janta", food_id:"91")

Record.create(date:"2018-05-18", meal:"Almoço", food_id:"82")

Record.create(date:"2018-05-18", meal:"Almoço", food_id:"97")

Record.create(date:"2018-05-18", meal:"Almoço", food_id:"84")

Food.create(name:"Carne picada com molho caipira", category:"Carne",restaurant_id:"2")
Record.create(date:"2018-05-18", meal:"Almoço", food_id:"125")

Food.create(name:"PVT caipira", category:"PVT",restaurant_id:"2")
Record.create(date:"2018-05-18", meal:"Almoço", food_id:"126")

Food.create(name:"Chuchu refogado", category:"Acompanhamento",restaurant_id:"2")
Record.create(date:"2018-05-18", meal:"Almoço", food_id:"127")

Record.create(date:"2018-05-18", meal:"Almoço", food_id:"106")

Food.create(name:"Gelatina", category:"Sobremesa",restaurant_id:"2")
Record.create(date:"2018-05-18", meal:"Almoço", food_id:"128")

Record.create(date:"2018-05-18", meal:"Almoço", food_id:"90")

Record.create(date:"2018-05-18", meal:"Almoço", food_id:"91")

Record.create(date:"2018-05-18", meal:"Janta", food_id:"82")

Record.create(date:"2018-05-18", meal:"Janta", food_id:"97")

Record.create(date:"2018-05-18", meal:"Janta", food_id:"84")

Food.create(name:"Contrafilé assado", category:"Carne",restaurant_id:"2")
Record.create(date:"2018-05-18", meal:"Janta", food_id:"129")

Food.create(name:"PVT com ervilhas", category:"PVT",restaurant_id:"2")
Record.create(date:"2018-05-18", meal:"Janta", food_id:"130")

Food.create(name:"Batata-doce sauté", category:"Acompanhamento",restaurant_id:"2")
Record.create(date:"2018-05-18", meal:"Janta", food_id:"131")

Record.create(date:"2018-05-18", meal:"Janta", food_id:"111")

Record.create(date:"2018-05-18", meal:"Janta", food_id:"96")

Record.create(date:"2018-05-18", meal:"Janta", food_id:"90")

Record.create(date:"2018-05-18", meal:"Janta", food_id:"91")

Food.create(name:"Arroz", category:"Básico",restaurant_id:"3")
Record.create(date:"2018-05-14", meal:"Almoço", food_id:"132")

Food.create(name:"Feijão", category:"Básico",restaurant_id:"3")
Record.create(date:"2018-05-14", meal:"Almoço", food_id:"133")

Food.create(name:"Arroz integral", category:"Básico",restaurant_id:"3")
Record.create(date:"2018-05-14", meal:"Almoço", food_id:"134")

Food.create(name:"Almôndega ao sugo", category:"Carne",restaurant_id:"3")
Record.create(date:"2018-05-14", meal:"Almoço", food_id:"135")

Food.create(name:"PVT com azeitonas", category:"PVT",restaurant_id:"3")
Record.create(date:"2018-05-14", meal:"Almoço", food_id:"136")

Food.create(name:"Macarrão ao alho e óleo", category:"Acompanhamento",restaurant_id:"3")
Record.create(date:"2018-05-14", meal:"Almoço", food_id:"137")

Food.create(name:"Salada de repolho bicolor", category:"Salada",restaurant_id:"3")
Record.create(date:"2018-05-14", meal:"Almoço", food_id:"138")

Food.create(name:"Maçã", category:"Sobremesa",restaurant_id:"3")
Record.create(date:"2018-05-14", meal:"Almoço", food_id:"139")

Food.create(name:"Minipão", category:"Básico",restaurant_id:"3")
Record.create(date:"2018-05-14", meal:"Almoço", food_id:"140")

Food.create(name:"Refresco", category:"Básico",restaurant_id:"3")
Record.create(date:"2018-05-14", meal:"Almoço", food_id:"141")

Record.create(date:"2018-05-14", meal:"Janta", food_id:"132")

Record.create(date:"2018-05-14", meal:"Janta", food_id:"133")

Record.create(date:"2018-05-14", meal:"Janta", food_id:"134")

Food.create(name:"Frango xadrez ", category:"Carne",restaurant_id:"3")
Record.create(date:"2018-05-14", meal:"Janta", food_id:"142")

Food.create(name:"Xadrez de PVT ", category:"PVT",restaurant_id:"3")
Record.create(date:"2018-05-14", meal:"Janta", food_id:"143")

Food.create(name:"Berinjela à indiana ", category:"Acompanhamento",restaurant_id:"3")
Record.create(date:"2018-05-14", meal:"Janta", food_id:"144")

Food.create(name:"Salada de alface   ", category:"Salada",restaurant_id:"3")
Record.create(date:"2018-05-14", meal:"Janta", food_id:"145")

Food.create(name:"Doce de leite ", category:"Sobremesa",restaurant_id:"3")
Record.create(date:"2018-05-14", meal:"Janta", food_id:"146")

Record.create(date:"2018-05-14", meal:"Janta", food_id:"140")

Record.create(date:"2018-05-14", meal:"Janta", food_id:"141")

Record.create(date:"2018-05-15", meal:"Almoço", food_id:"132")

Food.create(name:"Feijão preto", category:"Básico",restaurant_id:"3")
Record.create(date:"2018-05-15", meal:"Almoço", food_id:"147")

Record.create(date:"2018-05-15", meal:"Almoço", food_id:"134")

Food.create(name:"Frango assado", category:"Carne",restaurant_id:"3")
Record.create(date:"2018-05-15", meal:"Almoço", food_id:"148")

Food.create(name:"PVT com pimentão", category:"PVT",restaurant_id:"3")
Record.create(date:"2018-05-15", meal:"Almoço", food_id:"149")

Food.create(name:"Cenoura com salsa", category:"Acompanhamento",restaurant_id:"3")
Record.create(date:"2018-05-15", meal:"Almoço", food_id:"150")

Food.create(name:"Salada de escarola", category:"Salada",restaurant_id:"3")
Record.create(date:"2018-05-15", meal:"Almoço", food_id:"151")

Food.create(name:"Sagu", category:"Sobremesa",restaurant_id:"3")
Record.create(date:"2018-05-15", meal:"Almoço", food_id:"152")

Record.create(date:"2018-05-15", meal:"Almoço", food_id:"140")

Record.create(date:"2018-05-15", meal:"Almoço", food_id:"141")

Record.create(date:"2018-05-15", meal:"Janta", food_id:"132")

Record.create(date:"2018-05-15", meal:"Janta", food_id:"147")

Record.create(date:"2018-05-15", meal:"Janta", food_id:"134")

Food.create(name:"Copa lombo ao molho de abacaxi", category:"Carne",restaurant_id:"3")
Record.create(date:"2018-05-15", meal:"Janta", food_id:"153")

Food.create(name:"PVT alemão ", category:"PVT",restaurant_id:"3")
Record.create(date:"2018-05-15", meal:"Janta", food_id:"154")

Food.create(name:"Virado de couve ", category:"Acompanhamento",restaurant_id:"3")
Record.create(date:"2018-05-15", meal:"Janta", food_id:"155")

Food.create(name:"Salada de beterraba ralada", category:"Salada",restaurant_id:"3")
Record.create(date:"2018-05-15", meal:"Janta", food_id:"156")

Food.create(name:"Banana ", category:"Sobremesa",restaurant_id:"3")
Record.create(date:"2018-05-15", meal:"Janta", food_id:"157")

Record.create(date:"2018-05-15", meal:"Janta", food_id:"140")

Record.create(date:"2018-05-15", meal:"Janta", food_id:"141")

Record.create(date:"2018-05-16", meal:"Almoço", food_id:"132")

Record.create(date:"2018-05-16", meal:"Almoço", food_id:"133")

Record.create(date:"2018-05-16", meal:"Almoço", food_id:"134")

Food.create(name:"Carne assada ao molho madeira", category:"Carne",restaurant_id:"3")
Record.create(date:"2018-05-16", meal:"Almoço", food_id:"158")

Food.create(name:"Omelete com ricota", category:"PVT",restaurant_id:"3")
Record.create(date:"2018-05-16", meal:"Almoço", food_id:"159")

Food.create(name:"Escarola refogada", category:"Acompanhamento",restaurant_id:"3")
Record.create(date:"2018-05-16", meal:"Almoço", food_id:"160")

Food.create(name:"Salada de grão-de-bico ao vinagrete", category:"Salada",restaurant_id:"3")
Record.create(date:"2018-05-16", meal:"Almoço", food_id:"161")

Food.create(name:"Mexerica", category:"Sobremesa",restaurant_id:"3")
Record.create(date:"2018-05-16", meal:"Almoço", food_id:"162")

Record.create(date:"2018-05-16", meal:"Almoço", food_id:"140")

Record.create(date:"2018-05-16", meal:"Almoço", food_id:"141")

Record.create(date:"2018-05-16", meal:"Janta", food_id:"132")

Record.create(date:"2018-05-16", meal:"Janta", food_id:"133")

Record.create(date:"2018-05-16", meal:"Janta", food_id:"134")

Food.create(name:"Iscas de frango ao vinagrete  ", category:"Carne",restaurant_id:"3")
Record.create(date:"2018-05-16", meal:"Janta", food_id:"163")

Food.create(name:"Lasanha de PVT ", category:"PVT",restaurant_id:"3")
Record.create(date:"2018-05-16", meal:"Janta", food_id:"164")

Food.create(name:"Abobrinha refogada ", category:"Acompanhamento",restaurant_id:"3")
Record.create(date:"2018-05-16", meal:"Janta", food_id:"165")

Record.create(date:"2018-05-16", meal:"Janta", food_id:"145")

Food.create(name:"Flan ", category:"Sobremesa",restaurant_id:"3")
Record.create(date:"2018-05-16", meal:"Janta", food_id:"166")

Record.create(date:"2018-05-16", meal:"Janta", food_id:"140")

Record.create(date:"2018-05-16", meal:"Janta", food_id:"141")

Record.create(date:"2018-05-17", meal:"Almoço", food_id:"132")

Record.create(date:"2018-05-17", meal:"Almoço", food_id:"133")

Record.create(date:"2018-05-17", meal:"Almoço", food_id:"134")

Food.create(name:"Filé de peixe assado", category:"Carne",restaurant_id:"3")
Record.create(date:"2018-05-17", meal:"Almoço", food_id:"167")

Food.create(name:"Tomate recheado com PVT", category:"PVT",restaurant_id:"3")
Record.create(date:"2018-05-17", meal:"Almoço", food_id:"168")

Food.create(name:"Brócolis refogado", category:"Acompanhamento",restaurant_id:"3")
Record.create(date:"2018-05-17", meal:"Almoço", food_id:"169")

Food.create(name:"Salada de alface", category:"Salada",restaurant_id:"3")
Record.create(date:"2018-05-17", meal:"Almoço", food_id:"170")

Food.create(name:"Gelatina", category:"Sobremesa",restaurant_id:"3")
Record.create(date:"2018-05-17", meal:"Almoço", food_id:"171")

Record.create(date:"2018-05-17", meal:"Almoço", food_id:"140")

Record.create(date:"2018-05-17", meal:"Almoço", food_id:"141")

Record.create(date:"2018-05-17", meal:"Janta", food_id:"132")

Record.create(date:"2018-05-17", meal:"Janta", food_id:"133")

Record.create(date:"2018-05-17", meal:"Janta", food_id:"134")

Food.create(name:"Bife acebolado ", category:"Carne",restaurant_id:"3")
Record.create(date:"2018-05-17", meal:"Janta", food_id:"172")

Food.create(name:"Hambúrguer de PVT    ", category:"PVT",restaurant_id:"3")
Record.create(date:"2018-05-17", meal:"Janta", food_id:"173")

Food.create(name:"Creme de espinafre ", category:"Acompanhamento",restaurant_id:"3")
Record.create(date:"2018-05-17", meal:"Janta", food_id:"174")

Food.create(name:"Salada de almeirão      ", category:"Salada",restaurant_id:"3")
Record.create(date:"2018-05-17", meal:"Janta", food_id:"175")

Food.create(name:"Mamão  ", category:"Sobremesa",restaurant_id:"3")
Record.create(date:"2018-05-17", meal:"Janta", food_id:"176")

Record.create(date:"2018-05-17", meal:"Janta", food_id:"140")

Record.create(date:"2018-05-17", meal:"Janta", food_id:"141")

Record.create(date:"2018-05-18", meal:"Almoço", food_id:"132")

Record.create(date:"2018-05-18", meal:"Almoço", food_id:"133")

Record.create(date:"2018-05-18", meal:"Almoço", food_id:"134")

Food.create(name:"Picadinho à brasileira", category:"Carne",restaurant_id:"3")
Record.create(date:"2018-05-18", meal:"Almoço", food_id:"177")

Food.create(name:"Panqueca de PVT", category:"PVT",restaurant_id:"3")
Record.create(date:"2018-05-18", meal:"Almoço", food_id:"178")

Food.create(name:"Chuchu com manjericão", category:"Acompanhamento",restaurant_id:"3")
Record.create(date:"2018-05-18", meal:"Almoço", food_id:"179")

Record.create(date:"2018-05-18", meal:"Almoço", food_id:"170")

Food.create(name:"Banana", category:"Sobremesa",restaurant_id:"3")
Record.create(date:"2018-05-18", meal:"Almoço", food_id:"180")

Record.create(date:"2018-05-18", meal:"Almoço", food_id:"140")

Record.create(date:"2018-05-18", meal:"Almoço", food_id:"141")

Record.create(date:"2018-05-18", meal:"Janta", food_id:"132")

Record.create(date:"2018-05-18", meal:"Janta", food_id:"133")

Record.create(date:"2018-05-18", meal:"Janta", food_id:"134")

Food.create(name:"Fricassé de frango ", category:"Carne",restaurant_id:"3")
Record.create(date:"2018-05-18", meal:"Janta", food_id:"181")

Food.create(name:"Fricassé de PVT", category:"PVT",restaurant_id:"3")
Record.create(date:"2018-05-18", meal:"Janta", food_id:"182")

Food.create(name:"Mandioca temperada ", category:"Acompanhamento",restaurant_id:"3")
Record.create(date:"2018-05-18", meal:"Janta", food_id:"183")

Food.create(name:"Salada de escarola    ", category:"Salada",restaurant_id:"3")
Record.create(date:"2018-05-18", meal:"Janta", food_id:"184")

Food.create(name:"Maçã  ", category:"Sobremesa",restaurant_id:"3")
Record.create(date:"2018-05-18", meal:"Janta", food_id:"185")

Record.create(date:"2018-05-18", meal:"Janta", food_id:"140")

Record.create(date:"2018-05-18", meal:"Janta", food_id:"141")

Record.create(date:"2018-05-20", meal:"Almoço", food_id:"132")

Record.create(date:"2018-05-20", meal:"Almoço", food_id:"133")

Record.create(date:"2018-05-20", meal:"Almoço", food_id:"134")

Food.create(name:"Iscas de carne aceboladas", category:"Carne",restaurant_id:"3")
Record.create(date:"2018-05-20", meal:"Almoço", food_id:"186")

Food.create(name:"PVT com cogumelos", category:"PVT",restaurant_id:"3")
Record.create(date:"2018-05-20", meal:"Almoço", food_id:"187")

Food.create(name:"Ravióli ao sugo", category:"Acompanhamento",restaurant_id:"3")
Record.create(date:"2018-05-20", meal:"Almoço", food_id:"188")

Food.create(name:"Salada de almeirão", category:"Salada",restaurant_id:"3")
Record.create(date:"2018-05-20", meal:"Almoço", food_id:"189")

Food.create(name:"Laranja", category:"Sobremesa",restaurant_id:"3")
Record.create(date:"2018-05-20", meal:"Almoço", food_id:"190")

Record.create(date:"2018-05-20", meal:"Almoço", food_id:"140")

Record.create(date:"2018-05-20", meal:"Almoço", food_id:"141")

