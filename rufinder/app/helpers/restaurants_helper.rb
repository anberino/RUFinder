module RestaurantsHelper

  def infoRest(rest_id)
    soma = 0
    review = []
    distrib = [0,0,0,0,0,0]
    i = 0
    RestaurantReview.where(restaurant_id: rest_id).each do |r|
      soma += r.rating
      distrib[(r.rating/2).ceil] += 1
      review[i] = r
      i = i +1
    end
    if(i>0)
      media = soma/(i)
    else
      media = 5
    end
    return review, media, distrib
  end

end
