class CheckPointsController < ApplicationController
  before_action :set_check_point, only: [:edit, :update, :destroy]
  before_action :set_track

  def index
    @check_points = @track.check_points
  end

  def new
    @check_point = CheckPoint.new
  end

  def edit
  end

  def create
    @check_point = CheckPoint.new(check_point_params.merge(track: @track))

    if @check_point.save
      redirect_to track_check_points_url(@track), notice: 'Checkpoint was successfully created.'
    else
      render :new
    end
  end

  def update
    if @check_point.update(check_point_params)
      redirect_to track_check_points_url(@track), notice: 'Checkpoint was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @check_point.destroy
    
    redirect_to track_check_points_url(@track), notice: 'Checkpoint was successfully destroyed.'
  end

  private
    def set_check_point
      @check_point = CheckPoint.find(params[:id])
    end

    def set_track
      @track = Track.find(params[:track_id])
    end

    def check_point_params
      params.require(:check_point).permit(:name, :lat, :lng, :animal_id)
    end
end
