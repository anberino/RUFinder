require 'date'

module MainHelper

	def getFood(tipo,date,id)

		bandeja = Array.new()
		nota = Array.new()

		0.upto(3) do |i|
			bandeja[i] = Array.new()
			nota[i] = 0
		end

		hoje = Food.none

		1.upto(4) do | rest |

			hoje = hoje + Food.joins(:records).where(records: {meal: tipo}).where(records: {date: date}).where(category: "Básico").where(restaurant_id: rest).order("name ASC").first(3)

			["Carne","PVT","Acompanhamento","Salada","Sobremesa"].each do | cat |
				hoje = hoje + Food.joins(:records).where(records: {meal: tipo}).where(records: {date: date}).where(category: cat).where(restaurant_id: rest).order("created_at DESC").first(1)
			end

			hoje = hoje + Food.joins(:records).where(records: {meal: tipo}).where(records: {date: date}).where(category: "Básico").where("name ~* ?", "\.*(Refresco|Minipão)\.*").where(restaurant_id: rest).first(2)

		end

		hoje.each do |r|
			bandeja[r.restaurant_id-1].push(r)
			review = Review.where(food_id: r.id).where(user_id: id).first
			nota[r.restaurant_id-1] = nota[r.restaurant_id-1] + review.rating - 5 if !review.nil?
		end

		0.upto(3) do |i|
			if bandeja[i].size < 2
				nota[i] = -999
			end
		end

		return bandeja, nota

	end

	def getDia(dia)

		if dia == nil
			return Date.today, Date.today.wday
		end

		semana = ["Seg","Ter","Qua","Qui","Sex","Sab","Dom"]

		if semana.include? dia

			hoje = Date.today.wday - 1
			quero = semana.find_index(dia)

			if hoje == -1 then hoje = 6 end

			delta = quero - hoje

			return Date.today + (delta), (quero+1)%7

		else
			return Date.today, Date.today.wday
		end

	end

end
