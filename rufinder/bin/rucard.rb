require "Date"

def main()
	cdp = `python3 getjão.py 9`

	cdp.slice!(/.+,\[\{/)

	7.times do 
		today = cdp.slice!(/cdpdia:"(?<cdp>.+?)",codddd/,"cdp")		#Pega o almoço do dia
		card = today.split(/\<br\>/)								#divide em cada parte da comida
		dia = cdp.slice!(/diasemana:(?<dia>.),/,"dia")				#dia bjao = dia ruby + 1

		data = cdp.slice!(/,dtainismncdp:"(?<data>.+?)"/,"data")				#Pega a data e deixa ela bonita
		data = data.split(/\\+?\//)
		data = Date.new(Integer(data[2]),Integer(data[1]),Integer(data[0]))

		puts "#{Integer(dia)-1} : #{Date::DAYNAMES[Integer(dia)-1]} : #{data}"

		puts ""
		if(card.length>1)
			card.each_with_index do |x,index|
				x.gsub!(/\\+?\//,'/')				#Tranforma \\/ em /
				x.gsub!(/\\+u(.{4})/) do |match|	#Transforma \uXXXX em char
					[$1.hex].pack('U*')
				end
				puts "#{index} : #{x}"
			end
		else
			puts "Fechado"
		end
		puts ""

		cdp.slice!(/.+?,\{/)	#Se livra de ruido

		today = cdp.slice!(/cdpdia:"(?<cdp>.+?)",codddd/,"cdp")		#Pega a janta do dia
		card = today.split(/\<br\>/)
		dia = cdp.slice!(/diasemana:(?<dia>.),/,"dia")
		if(card.length>1)
			card.each_with_index do |x,index|
				x.gsub!(/\\+?\//,'/')
				x.gsub!(/\\+u(.{4})/) do |match|
					[$1.hex].pack('U*')
				end
				puts "#{index} : #{x}"
			end
		else
			puts "Fechado"
		end
		puts ""
		puts "\n\n"

		cdp.slice!(/.+?,\{/)
	end
end

main()