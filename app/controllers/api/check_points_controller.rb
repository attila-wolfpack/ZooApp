class Api::CheckPointsController < Api::ApiController
  before_action :set_track, only: :index

  def index
    @quizzes = @track.check_points.map do |check_point|
      Quiz.new(
        check_point: check_point,
        animal: check_point.animal,
        question: check_point.animal.questions.sample
      )
    end

    render json: @quizzes
  end

  private

  def set_track
    @track = Track.find(params[:track_id])
  end
end
