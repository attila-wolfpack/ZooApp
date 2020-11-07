class Api::AnimalSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
end
