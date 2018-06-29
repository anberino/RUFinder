class HomeController < ApplicationController
  def show
    if !(current_user).nil?
      redirect_to main_index_path
    end
  end

  def help
  end
end
