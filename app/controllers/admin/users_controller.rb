class Admin::UsersController < ApplicationController
  before_filter :authenticate
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  private
    def authenticate
      unless current_user.try(:admin?)
        redirect_to new_user_session_path
      end
    end
end
