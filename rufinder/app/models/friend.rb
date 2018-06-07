class Friend < ApplicationRecord
  has_many :users,
           foreign_key: "sender_id",
           class_name: "User"
  has_many :users,
           foreign_key: "receiver_id",
           class_name: "User"
  validates :sender_id, presence: true
  validates :receiver_id, presence: true
  validate :check_sender_receiver_id

  def check_sender_receiver_id
    errors.add(:receiver_id, "can't be the same as sender_id") if sender_id == receiver_id
  end

end
