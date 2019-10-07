class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    authorize @user
  end

  def my_page
    @user = current_user
    authorize @user
    @event = current_user.events
  end
end
