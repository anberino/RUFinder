require 'rails_helper'

RSpec.describe Food, type: :model do
  before do
    @restaurant = Restaurant.create(id: 1, name: "Central", location: "Rua Fulano de Tal")
    @restaurant2 = Restaurant.create(id: 2, name: "Prefeitura", location: "Rua Ciclano de Tal")
    @food1 = Food.create(id: 1, name: "Comida1", category: "Básico", restaurant_id: 1)
    @food2 = Food.new(id: 2, name: "Comida2", category: nil , restaurant_id: 1)
    @food3 = Food.new(id: 3, name: nil, category: "Sobremesa" , restaurant_id: 1)
  end

  it "has valid attributes" do
    expect(@food1).to be_valid
    expect(@food2).not_to be_valid
    expect(@food3).not_to be_valid
  end

  it "doesn't allow duplicated foods with the same restaurant" do
    @food = Food.new(id: 4, name: "Comida1", category: "Básico", restaurant_id: 1)
    expect(@food).not_to be_valid
    @food.restaurant_id = 2
    expect(@food).to be_valid
  end

  it "doesn't allow foods with invalid restaurants" do
    @food1.restaurant_id = 100
    expect(@food1).not_to be_valid
  end

  describe "Associations" do
    it "has many reviews" do
      assc = described_class.reflect_on_association(:reviews)
      expect(assc.macro).to eq :has_many
    end

    it "has many users" do
      assc = described_class.reflect_on_association(:users)
      expect(assc.macro).to eq :has_many
    end

    it "has many records" do
      assc = described_class.reflect_on_association(:records)
      expect(assc.macro).to eq :has_many
    end

    it "belongs to restaurants" do
      assc = described_class.reflect_on_association(:restaurant)
      expect(assc.macro).to eq :belongs_to
    end

  end

end
