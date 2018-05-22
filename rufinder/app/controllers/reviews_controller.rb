class ReviewsController < ApplicationController
  def index
    if(current_user)
        @reviews = Review.all
    else
    	redirect_to root_path
    end
  end

  def new
    @food = Food.find(params[:food_id])
    @reviews = Review.find_by(food_id: @food.id ,user_id: current_user.id)
	if (!@reviews.nil?)
		redirect_to action: 'edit', id: @reviews.id
    end
    @review = Review.new
  end

  def edit
	@review = Review.find(params[:id])
	if current_user.id != @review.user_id
		flash[:notice] = "Sai fora porra"
		redirect_to root_url
	else
		@food = Food.find(@review.food_id)	
	end
  end

  def create
    @review = Review.new(review_params)

    respond_to do |format|
      if @review.save
        format.html { redirect_to @review, notice: 'Review was successfully created.' }
        format.json { render :show, status: :created, location: @review }
      else
		@food = Food.find(@review.food_id)
        format.html { render action: :new }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def update
    @review = Review.find(params[:id])
    respond_to do |format|
      if @review.update(review_params)
        format.html { redirect_to @review, notice: 'Review was successfully updated.' }
        format.json { render :show, status: :updated, location: @review }
      else
		@food = Food.find(@review.food_id)
        format.html { render 'edit'}
        format.json { render json: @review.errors, status: :unprocessable_entity }
	  end
	end
  end

  def show
     @review = Review.find(params[:id])
  end



# Never trust parameters from the scary internet, only allow the white list through.
  private	
    def review_params
      params.require(:review).permit(:comment,:rating,:user_id,:food_id)
    end
end
