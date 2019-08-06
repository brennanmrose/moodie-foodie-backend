class Mood < ApplicationRecord
	has_many :foods
	has_many :drinks
	has_many :desserts
	
	validates :name, presence: true
end
