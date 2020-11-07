class Api::CheckPointSerializer < ActiveModel::Serializer
  attributes :id, :name, :lat, :lng, :description, :animal_id
end
