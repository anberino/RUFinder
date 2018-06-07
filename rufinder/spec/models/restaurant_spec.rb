require 'rails_helper'

RSpec.describe Restaurant, :type => :model do
  subject { described_class.new(id:2, name:"Nome qualquer", location:"USP") }

  describe "Validations" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is not valid without a name" do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a location" do
      subject.location = nil
      expect(subject).to_not be_valid
    end
  end

  describe "Associations" do
    it "has many foods" do
      assc = described_class.reflect_on_association(:foods)
      expect(assc.macro).to eq :has_many
    end
  end
end
