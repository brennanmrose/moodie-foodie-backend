class MoodSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url

	has_many :foods
	has_many :drinks
	has_many :desserts
end
