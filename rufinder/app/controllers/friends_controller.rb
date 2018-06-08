class FriendsController < ApplicationController
  def index
  	if(current_user)
    	@friends = Friend.all
    else
    	redirect_to root_path
    end
  end

  def create
  	mail = params[:email]
  	amigo = User.find_by(email: mail)
  	if amigo.nil?
  		flash[:error] = "Esta pessoa não foi encontrada... Tem certeza de que digitou o e-mail corretamente?"
  		redirect_to foods_url
  	end
  	if current_user.nil?
  		flash[:error] = "Você nem existe de verdade e quer ter amigos, wtf"
  		redirect_to root_url
  	end
  	@friend = Friend.new(sender_id: current_user.id, receiver_id: amigo.id)
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

end
