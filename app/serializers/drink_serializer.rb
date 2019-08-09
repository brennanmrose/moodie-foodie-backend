class DrinkSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :drink_url, :image_url

  belongs_to :mood
end
