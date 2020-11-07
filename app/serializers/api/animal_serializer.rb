class Api::AnimalSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :donate_url, :model_url

  def model_url
    return if object.model.blank?

    Rails.application.routes.url_helpers.rails_blob_url(object.model, host: ENV['DOMAIN'] || 'localhost:3000')
  end
end
