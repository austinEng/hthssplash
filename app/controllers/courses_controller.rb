class CoursesController < ApplicationController
  before_filter :authenticate_user
  def index
    @courses = Course.all
  end

  def show
    @course = Course.friendly.find(params[:id])
    @user = current_user
  end

  def register
    @course = Course.friendly.find(params[:id])
    @register = @course.registrations.build(user_id: current_user.id)
    if @register.save
      flash[:notice] = "You have joined this group."
      redirect_to :back
    else
      flash[:error] = "Unable to join."
      redirect_to :back
    end
  end

  def unregister
    @course = Course.friendly.find(params[:id])
    @register = current_user.registrations.find_by(course_id: @course.id)
    current_user.registrations.delete(@register)
    redirect_to :back
  end

  private
    def authenticate_user
      unless user_signed_in?
        redirect_to new_user_session_path
      end
    end
end