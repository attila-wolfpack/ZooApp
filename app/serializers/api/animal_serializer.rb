class Api::AnimalSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :donate_url, :model_url, :texture_url

  def model_url
    return if object.model.blank?

    Rails.application.routes.url_helpers.rails_blob_url(object.model, host: ENV['DOMAIN'] || 'localhost:3000')
  end

  def texture_url
    return if object.texture.blank?

    Rails.application.routes.url_helpers.rails_blob_url(object.texture, host: ENV['DOMAIN'] || 'localhost:3000')
  end
end
