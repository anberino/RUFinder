class FoodsController < ApplicationController
  def index
  	if(current_user)
    	@foods = Food.all
    else
    	redirect_to root_path
    end
  end

  def show
     @food = Food.find(params[:id])
  end

end
