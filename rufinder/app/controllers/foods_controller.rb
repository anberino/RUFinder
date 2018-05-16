class FoodsController < ApplicationController
  def index
  	if(current_user)
    	@foods = Food.all
    else
    	redirect_to root_path
    end
  end
end
