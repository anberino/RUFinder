require 'rails_helper'

RSpec.describe RestaurantReview, type: :model do
  before do
		@user = User.create(name: "José", email: "jose@teste.moe")
		@rest = Restaurant.create(name: "Fisica", location: "Sei la onde")
		@review = RestaurantReview.new(rating: 10 , user_id: @user.id, restaurant_id: @rest.id)
	end
  describe "Validations" do
		it "Creates a valid review" do
			expect(@review).to be_valid
		end

		it "Doesn't allow a review with a nil food" do
			@review.restaurant_id = nil
			expect(@review).to_not be_valid
		end

		it "Doesn't allow a review with a non-existing food" do
			@review.restaurant_id = 999
			expect(@review).to_not be_valid
		end

		it "Doesn't allow a review with a nil user" do
			@review.user_id = nil
			expect(@review).to_not be_valid
		end

		it "Doesn't allow a review with a non-existing user" do
			@review.user_id = 999
			expect(@review).to_not be_valid
		end
	end

	describe "Associations" do
		it "Belongs to users" do
		    assc = described_class.reflect_on_association(:user)
		    expect(assc.macro).to eq :belongs_to
		end

		it "Belongs to restaurant" do
		    assc = described_class.reflect_on_association(:restaurant)
		    expect(assc.macro).to eq :belongs_to
		end
	end
end
