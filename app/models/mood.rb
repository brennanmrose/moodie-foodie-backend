class Mood < ApplicationRecord
	has_many :food
	has_many :drink
	has_many :dessert
	
	validates :name, presence: true
end
