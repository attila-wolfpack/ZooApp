class Api::TrackSerializer < ActiveModel::Serializer
  attributes :id, :name, :city, :description, :check_points_count
end
