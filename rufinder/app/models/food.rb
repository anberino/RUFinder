class Food < ApplicationRecord
  belongs_to :restaurant
  has_many :reviews
  has_many :records
end
