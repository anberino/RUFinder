class FoodsController < ApplicationController
  def index
  	if(current_user)
    	@foods = Food.all
      @query = Food.where(id: nil)
    else
    	redirect_to root_path
    end
  end

  def show
     @food = Food.find(params[:id])
  end

  def query
    if(params[:q] == "true")

      @query = Food.where(id: nil)
      locais = Food.where(id: nil)
      
      if(params[:id0] == "true")
          locais = locais.or(Food.where(restaurant_id: 1))
      end

      if(params[:id1] == "true")
          locais = locais.or(Food.where(restaurant_id: 2))
      end

      if(params[:id2] == "true")
          locais = locais.or(Food.where(restaurant_id: 3))
      end

      if(params[:id3] == "true")
          locais = locais.or(Food.where(restaurant_id: 4))
      end

      if(locais.empty?)

        if(params[:id4] == "true")
          @query = @query.or(Food.where(category: "Básico"))
        end

        if(params[:id5] == "true")
          @query = @query.or(Food.where(category: "Carne"))
        end

        if(params[:id6] == "true")
          @query = @query.or(Food.where(category: "PVT"))
        end

        if(params[:id7] == "true")
          @query = @query.or(Food.where(category: "Acompanhamento"))
        end

        if(params[:id8] == "true")
          @query = @query.or(Food.where(category: "Salada"))
        end

        if(params[:id9] == "true")
          @query = @query.or(Food.where(category: "Sobremesa"))
        end
      
      else

        if(params[:id4] == "true")
          @query = @query.or(locais.where(category: "Básico"))
        end

        if(params[:id5] == "true")
          @query = @query.or(locais.where(category: "Carne"))
        end

        if(params[:id6] == "true")
          @query = @query.or(locais.where(category: "PVT"))
        end

        if(params[:id7] == "true")
          @query = @query.or(locais.where(category: "Acompanhamento"))
        end

        if(params[:id8] == "true")
          @query = @query.or(locais.where(category: "Salada"))
        end

        if(params[:id9] == "true")
          @query = @query.or(locais.where(category: "Sobremesa"))
        end

      end

      if(@query.empty?)
      	@query = locais.all
      end

      if(params[:reg]!=nil)     
        @query = @query.where("name ~* ?", "\.*#{params[:reg]}\.*")
      end

    elsif(params[:reg]!=nil)
      @query = Food.where("name ~* ?", "\.*#{params[:reg]}\.*")
    else
      @query = Food.where(id: nil)
    end

    render '_foods', layout: false
  end

end
