require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = User.new(name:"Eddard Stark", email:"eddard@snow.com")
  end
  describe "Validations" do
    it "is not valid without a name" do
      @user.name = nil
      expect(@user).to_not be_valid
    end

    it "is not valid without a email" do
      @user.email = nil
      expect(@user).to_not be_valid
    end
  end
  describe "Associations" do
    it "has many reviews" do
      assc = described_class.reflect_on_association(:reviews)
      expect(assc.macro).to eq :has_many
    end

    it "has many foods" do
      assc = described_class.reflect_on_association(:foods)
      expect(assc.macro).to eq :has_many
    end

    it "has many users" do
      assc = described_class.reflect_on_association(:users)
      expect(assc.macro).to eq :has_many
    end

  end
end
