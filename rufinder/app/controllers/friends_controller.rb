class FriendsController < ApplicationController
	def index
  	if(current_user)
    	@friends = Friend.all
    else
    	redirect_to root_path
    end
  end
end
