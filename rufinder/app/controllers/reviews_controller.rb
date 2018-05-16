class ReviewsController < ApplicationController
  def index
  	if(current_user)
    	@reviews = Review.all
    else
    	redirect_to root_path
    end
  end
end
