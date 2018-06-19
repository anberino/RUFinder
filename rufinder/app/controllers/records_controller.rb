class RecordsController < ApplicationController
  def index
    if(current_user)
      @records = Record
    else
      redirect_to root_path
    end
  end
end
