require 'rails_helper'

RSpec.describe Friend, type: :model do
  before do
    @user1 = User.create(id: 1, name: "Alice", email: "alice@email.com")
    @user2 = User.create(id: 2, name: "Bob", email: "bob@email.com")
    @friend = Friend.create(id: 1, sender_id: 1, receiver_id: 2, status: false)
    @friend_invalid = Friend.create(id: 2, sender_id: nil , receiver_id: 2, status: true)
    @friend_invalid2 = Friend.create(id: 3, sender_id: 1 , receiver_id: nil, status: true)
  end

  it "has valid attributes" do
    expect(@friend).to be_valid
    expect(@friend_invalid).not_to be_valid
    expect(@friend_invalid2).not_to be_valid
  end

  it "doesn't allow same id for receiver and sender" do
    @friend2 = Friend.new(id: 4, sender_id: 1, receiver_id: 1, status: true)
    expect(@friend2).not_to be_valid
  end

  describe "Associations" do
    it "has many users" do
      assc = described_class.reflect_on_association(:users)
      expect(assc.macro).to eq :has_many
    end

  end

end
