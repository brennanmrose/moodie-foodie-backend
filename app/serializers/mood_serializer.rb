class MoodSerializer < ActiveModel::Serializer
  attributes :id, :name

	has_many :foods
	has_many :drinks
	has_many :desserts
end
