class MainController < ApplicationController
  def index
    if(current_user)
      @records = Record.all
      @friends = Friend.all
    else
      redirect_to root_path
    end
  end
end
