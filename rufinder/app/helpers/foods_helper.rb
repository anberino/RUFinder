module FoodsHelper

  def info(food_id)
    soma = 0
    review = []
    distrib = [0,0,0,0,0,0]
    i = 0
    Review.where(food_id: food_id).each do |r|
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
