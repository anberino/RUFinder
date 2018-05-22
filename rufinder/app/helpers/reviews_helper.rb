module ReviewsHelper
	def toStars(rating)
		if rating % 2 == 0
			yield("full","star#{rating/2}",true)
		else
			yield("half","star#{rating/2}half",true)
		end
		for i in 1..rating-1
			if i % 2 == 0
				yield("full","star#{i/2}",false)
			else
				yield("half","star#{i/2}half",false)
		    end
			
		end

	end
end
