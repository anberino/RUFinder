require 'rails_helper'

RSpec.describe Review, type: :model do

	before do
		@user = User.create(name: "José", email: "jose@teste.moe")
		@rest = Restaurant.create(name: "Fisica", location: "Sei la onde")
		@food = Food.create(name: "Papaya Assada", category: "Basico", restaurant_id: @rest.id)
		@review = Review.new(rating: 10 , user_id: @user.id, food_id: @food.id)
	end

	it "Creates a valid review" do
		expect(@review).to be_valid
	end

	it "Doesn't allow a review with a nil food" do
		@review.food_id = nil
		expect(@review).to_not be_valid
	end

	it "Doesn't allow a review with a non-existing food" do
		@review.food_id = 999
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

	it "Belongs to users" do
	    assc = described_class.reflect_on_association(:user)
	    expect(assc.macro).to eq :belongs_to
	end

	it "Belongs to food" do
	    assc = described_class.reflect_on_association(:food)
	    expect(assc.macro).to eq :belongs_to
	end

end
