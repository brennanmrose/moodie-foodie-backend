class DessertSerializer < ActiveModel::Serializer
  attributes :id, :name, :description

  belongs_to :mood
end
