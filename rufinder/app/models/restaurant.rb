class Restaurant < ApplicationRecord
	has_many :foods
	validates :name, presence: true
	validates :location, presence: true
end
