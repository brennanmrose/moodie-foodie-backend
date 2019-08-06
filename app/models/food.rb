class Food < ApplicationRecord
	belongs_to :mood

	validates :mood_id, presence: true
	validates :name, presence: true
	validates :description, presence: true
end
