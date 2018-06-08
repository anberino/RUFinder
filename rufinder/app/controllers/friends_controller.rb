class FriendsController < ApplicationController
  def index
  	if(current_user)
    	@friends = Friend.all
    else
    	redirect_to root_path
    end
  end

  def create
  	friend = params.require(:friend).permit(:email)
  	@amigo = User.find_by(email: friend[:email])
  	if @amigo.nil?
  		flash[:error] = "Esta pessoa não foi encontrada... Tem certeza de que digitou o e-mail corretamente?"
  		redirect_to foods_url
  	end
  	if current_user.nil?
  		flash[:error] = "Você nem existe de verdade e quer ter amigos, wtf"
  		redirect_to root_url
  	end
    print("Current_user id: #{current_user.id} e Amigo:#{@amigo.id}")
  	@friend = Friend.new(sender_id: current_user.id, receiver_id: @amigo.id)
  	if @friend.save
  		flash[:notice] = "Seu pedido de amizade foi enviado"
  	else
  		flash[:error] = "Deu bostaaaaaaaaaaa"
  	end
  end

  def new
  	@friend = Friend.new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  private
    def friend_params
      params.require(:friend).permit(:email)
    end

end
