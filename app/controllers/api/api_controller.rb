class Api::ApiController < ActionController::Base
  include ::ActionController::Serialization

  rescue_from ActiveRecord::RecordInvalid, 
    :with => :render_error_response

  def render_error_response(error)
    render json: error, status: 422
  end
end
