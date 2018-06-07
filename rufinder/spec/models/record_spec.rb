require 'rails_helper'

RSpec.describe Record, type: :model do
  before do
    @restaurant = Restaurant.create(id: 1, name: "Central", location: "Rua Fulano de Tal")
    @food = Food.create(id: 1, name: "Comida1", category: "Básico", restaurant_id: @restaurant.id)
    @record = Record.create(date:"2018-05-21", meal:"Janta", food_id: @food.id)
  end
  describe "Validations" do
    it "is valid with valid attributes" do
      expect(@record).to be_valid
    end

    it "is not valid without a date" do
      @record.date = nil
      expect(@record).to_not be_valid
    end

    it "Doesn't allow a record with a non-existing food" do
      @record.food_id = 999
      expect(@record).to_not be_valid
    end

    it "is not valid without a meal" do
      @record.meal = nil
      expect(@record).to_not be_valid
    end
  end

  describe "Associations" do
    it "belongs to a food" do
      assc = described_class.reflect_on_association(:food)
      expect(assc.macro).to eq :belongs_to
    end
  end
end
