class Food < ApplicationRecord
  belongs_to :restaurant
  has_many :reviews
end
