class Record < ApplicationRecord
  belongs_to :food
  validates :date, presence: true
  validates :meal, presence: true
end
