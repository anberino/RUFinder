module FoodsHelper

  def info(food_id)
    soma = 0
    comments = []
    users = []
    i = 0
    print("TESTEDSADASDASDSADSDADD")
    print("FOODID:#{food_id}")
    Review.where(food_id: food_id).each do |r|
      soma += r.rating
      comments[i] = r.comment
      users[i] = r.user_id
      i = i +1
    end
    print("A PORRA DO I TA COM :#{i}")
    if(i>0)
      media = soma/(i)
    else
      media = 5
    end
    return comments, users, media
  end
end
