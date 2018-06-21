class Food < ApplicationRecord

  belongs_to :restaurant
  has_many :reviews
  has_many :users, through: :reviews
  has_many :records
  validates :name, presence: true
  validates :category, presence: true
  validates_uniqueness_of :name, scope: :restaurant_id

end
