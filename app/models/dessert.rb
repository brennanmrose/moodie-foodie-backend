class Dessert < ApplicationRecord
	belongs_to :mood
	validates :mood_id, presence: true
end
