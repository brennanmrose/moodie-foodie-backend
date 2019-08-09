class DessertSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :recipe_url, :image_url

  belongs_to :mood
end
