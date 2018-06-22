class RestaurantReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reviews = RestaurantReview.find_by(restaurant_id: @restaurant.id ,user_id: current_user.id)
    if (!@reviews.nil?)
      redirect_to action: 'edit', id: @reviews.id
    end
    @review = RestaurantReview.new
  end

  def create
    @review = RestaurantReview.new(review_params)

    respond_to do |format|
      if @review.save
        format.html { redirect_to @review, notice: 'Review criada com sucesso!' }
        format.json { render :show, status: :created, location: @review }
      else
		    @restaurant = Restaurant.find(@review.restaurant_id)
        format.html { render action: :new }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @review = RestaurantReview.find(params[:id])
    if current_user.id != @review.user_id
      flash[:notice] = "Sai fora porra"
      redirect_to root_url
    else
      @restaurant = Restaurant.find(@review.restaurant_id)
    end
  end

  def show
    @review = RestaurantReview.find(params[:id])
  end

  def update
    @review = RestaurantReview.find(params[:id])
    respond_to do |format|
      if @review.update(review_params)
        format.html { redirect_to @review, notice: 'Review editada com sucesso!' }
        format.json { render :show, status: :updated, location: @review }
      else
        @restaurant = Restaurant.find(@review.restaurant_id)
        format.html { render 'edit'}
        format.json { render json: @review.errors, status: :unprocessable_entity }
       end
      end
  end

  def destroy
    @review = RestaurantReview.find(params[:id])
    @review.destroy
    redirect_to reviews_url, :notice => "Review deletada com sucesso!"
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  private
    def review_params
      params.require(:restaurant_review).permit(:comment,:rating,:user_id,:restaurant_id)
    end

end
