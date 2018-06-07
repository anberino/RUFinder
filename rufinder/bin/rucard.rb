require "date"

def main()
	rest = []
	rest[6] = 1
	rest[7] = 4
	rest[8] = 2
	rest[9] = 3

	meal = ["Almoço", "Janta"]
	cat = ["Básico", "Carne", "PVT", "Acompanhamento", "Salada", "Sobremesa", "Básico"]

	seeds = open(Dir.pwd + "/db/backup.rb", "a")

	[6,7,8,9].each do |i|
		cdp = `python3 bin/getjão.py #{i.to_s}`

		cdp.slice!(/.+,\[\{/)

		7.times do 
			today = cdp.slice!(/cdpdia:"(?<cdp>.+?)",codddd/,"cdp")		#Pega o almoço do dia
			if(today.nil?)
				puts "Sem almoço no restaurante #{rest[i]} "
			else
				card = today.split(/\<br\>/)								#divide em cada parte da comida
				dia = cdp.slice!(/diasemana:(?<dia>.),/,"dia")				#dia bjao = dia ruby + 1

				data = cdp.slice!(/,dtainismncdp:"(?<data>.+?)"/,"data")				#Pega a data e deixa ela bonita
				data = data.split(/\\+?\//)
				data = Date.new(data[2].to_i,data[1].to_i,data[0].to_i)
				
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
							com.rstrip!

							f = Food.find_by(name: com, restaurant_id: rest[i])
							if f.nil?
								f = Food.create(name:com, category:cat[index] ,restaurant_id: rest[i])
								seeds.puts "Food.create(name:\"#{com}\", category:\"#{cat[index]}\",restaurant_id:\"#{rest[i]}\")"
								puts "Criando nova comida #{com} no restaurante #{rest[i]}"
							end

							r = Record.find_by(date:data, meal:meal[0], food_id:f.id)
							if(r.nil?)
								Record.create(date:data, meal:meal[0], food_id:f.id)
								seeds.puts "Record.create(date:\"#{data}\", meal:\"#{meal[0]}\", food_id:\"#{f.id}\")\n\n"
								puts "Criando novo resgistro de #{com} no restaurante #{rest[i]} como #{meal[0]} em #{data}\n\n"
							end

						end				
					end
				end
			end

			cdp.slice!(/.+?,\{/)	#Se livra de ruido

			today = cdp.slice!(/cdpdia:"(?<cdp>.+?)",codddd/,"cdp")		#Pega a janta do dia
			if(today.nil?)
				puts "Sem almoço no restaurante #{rest[i]} "
			else
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
							if f.nil?
								f = Food.create(name:com, category:cat[index] ,restaurant_id: rest[i])
								seeds.puts "Food.create(name:\"#{com}\", category:\"#{cat[index]}\",restaurant_id:\"#{rest[i]}\")"
								puts "Criando nova comida #{com} no restaurante #{rest[i]}"
							end

							r = Record.find_by(date:data, meal:meal[1], food_id:f.id)
							if(r.nil?)
								Record.create(date:data, meal:meal[1], food_id:f.id)
								seeds.puts "Record.create(date:\"#{data}\", meal:\"#{meal[1]}\", food_id:\"#{f.id}\")\n\n"
								puts "Criando novo resgistro de #{com} no restaurante #{rest[i]} como #{meal[1]} em #{data}\n\n"
							end

						end
					end
				end
			end
			cdp.slice!(/.+?,\{/)
		end
	end 
end

main()