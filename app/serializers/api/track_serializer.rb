class Api::TrackSerializer < ActiveModel::Serializer
  attributes :id, :name, :city, :description, :check_points_count, :photo_url

  def photo_url
    return if object.photo.blank?

    Rails.application.routes.url_helpers.rails_blob_url(object.photo, host: ENV['DOMAIN'] || 'localhost:3000')
  end
end
