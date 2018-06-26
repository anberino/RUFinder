class SessionsController < ApplicationController
  def create
    if OmniAuth.config.test_mode == true
      request.env["omniauth.auth"] = OmniAuth.config.mock_auth[:google]
    end
    user = User.from_omniauth(request.env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to main_index_path
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
