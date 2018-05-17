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
	@food = Food.find(@review.food_id)	
  end

  def create
    @review = Review.new(review_params)

    respond_to do |format|
      if @review.save
        format.html { redirect_to @review, notice: 'Review was successfully created.' }
        format.json { render :show, status: :created, location: @review }
      else
        format.html { render :new }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
     @reviews = Review.all
  end



# Never trust parameters from the scary internet, only allow the white list through.
  private	
    def review_params
      params.require(:review).permit(:comment,:rating,:user_id,:food_id)
    end
end
