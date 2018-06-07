require 'rails_helper'

RSpec.describe Record, type: :model do
  before do
    @restaurant = Restaurant.create(id: 1, name: "Central", location: "Rua Fulano de Tal")
    @food1 = Food.create(id: 1, name: "Comida1", category: "Básico", restaurant_id: 1)
    @record = Record.create(date:"2018-05-21", meal:"Janta", food_id: @food1.id)
  end
  subject { described_class.new(date:"2018-05-21", meal:"Janta", food_id: @food1.id) }
  describe "Validations" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is not valid without a date" do
      subject.date = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a meal" do
      subject.meal = nil
      expect(subject).to_not be_valid
    end
  end

  describe "Associations" do
    it "belongs to a food" do
      assc = described_class.reflect_on_association(:food)
      expect(assc.macro).to eq :belongs_to
    end
  end
end
