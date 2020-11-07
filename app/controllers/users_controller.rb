class UsersController < ApplicationController
  before_action :set_user, only: %i[approve destroy]

  def index
    @users = User.all
  end

  def destroy
    @user.destroy

    redirect_to users_path
  end

  def approve
    @user.update(approved: true)

    redirect_to users_path
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
