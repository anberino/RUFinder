require 'date'

module MainHelper

	def getFood(tipo,date)

		bandeja = Array.new()
		nota = Array.new()

		0.upto(3) do |i|
			bandeja[i] = Array.new()
			nota[i] = 0
		end

		@records.where(meal: tipo).where(date: date).find_each do |r|
			food = Food.find(r.food_id)
			bandeja[food.restaurant_id-1].push(food)                                                 
			review = Review.where(food_id: food.id).where(user_id: current_user.id).first
			nota[food.restaurant_id-1] = nota[food.restaurant_id-1] + review.rating - 5 if !review.nil?
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
