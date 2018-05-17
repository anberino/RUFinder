require "date"

def main()
	rest = []
	rest[6] = 1
	rest[7] = 4
	rest[8] = 2
	rest[9] = 3

	meal = ["Almoço", "Janta"]
	cat = ["Básico", "Carne", "PVT", "Acompanhamento", "Salada", "Sobremesa", "Básico"]
	[6,7,8,9].each do |i|
		cdp = `python3 bin/getjão.py #{i.to_s}`

		cdp.slice!(/.+,\[\{/)

		7.times do 
			today = cdp.slice!(/cdpdia:"(?<cdp>.+?)",codddd/,"cdp")		#Pega o almoço do dia
			card = today.split(/\<br\>/)								#divide em cada parte da comida
			dia = cdp.slice!(/diasemana:(?<dia>.),/,"dia")				#dia bjao = dia ruby + 1

			data = cdp.slice!(/,dtainismncdp:"(?<data>.+?)"/,"data")				#Pega a data e deixa ela bonita
			data = data.split(/\\+?\//)
			data = Date.new(Integer(data[2]),Integer(data[1]),Integer(data[0]))
			
			if(card.length>1)
				card.each_with_index do |x,index|
					x.gsub!(/\\+?\//,'/')								#Tranforma \\/ em /
					x.gsub!(/\\+u(.{4})/) {|match| [$1.hex].pack('U*')}	#Transforma \u0000 em chars
					x.gsub!(/Opção: /,'')								#Tira o Opção
					y = x.split(/\s*\/\s*/)								#Separa as comidas em /
					y.each do |com| 
						com.capitalize!
						com.gsub!("Pvt", "PVT")
						com.gsub!("pvt", "PVT")
						f = Food.find_by(name:com, restaurant_id: rest[i])
						f ||= Food.create(name:com, category:cat[index] ,restaurant_id: rest[i])
						Record.create(date:data, meal:meal[0], food_id:f.id)
					end				
				end
			end

			cdp.slice!(/.+?,\{/)	#Se livra de ruido

			today = cdp.slice!(/cdpdia:"(?<cdp>.+?)",codddd/,"cdp")		#Pega a janta do dia
			card = today.split(/\<br\>/)
			dia = cdp.slice!(/diasemana:(?<dia>.),/,"dia")
			if(card.length>1)
				j = 0
				card.each_with_index do |x,index|
					x.gsub!(/\\+?\//,'/')
					x.gsub!(/\\+u(.{4})/) {|match| [$1.hex].pack('U*')}
					x.gsub!(/Opção: /,'')
					y = x.split(/\s*\/\s*/)
					y.each do |com| 
						com.capitalize!
						com.gsub!("Pvt", "PVT")
						com.gsub!("pvt", "PVT")
						f = Food.find_by(name:com, restaurant_id: rest[i])
						f ||= Food.create(name:com, category:cat[index], restaurant_id: rest[i])
						Record.create(date:data, meal:meal[1], food_id:f.id)
					end
				end
			end

			cdp.slice!(/.+?,\{/)
		end
	end
end

main()