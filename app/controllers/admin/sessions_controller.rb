class Admin::SessionsController < ApplicationController
  before_filter :authenticate
  def index
    @users=User.all
    @courses=Course.all
  end

  def create
    reg = Registration.new(session_params)
    reg.save
    @users=User.all
    @courses=Course.all
  end

  def update
    reg = Registration.find(params[:id])
    reg.update_attributes(params[:session])
    @users=User.all
    @courses=Course.all
  end

  def destroy
    reg = Registration.find_by(params[:session])
    reg.delete
    @users=User.all
    @courses=Course.all
  end

  private
    def authenticate
      unless current_user.try(:admin?)
        redirect_to new_user_session_path
      end
    end

    def session_params
      params.permit(:user_id, :course_id, :session_1, :session_2, :session_3, :session_4)
    end
end