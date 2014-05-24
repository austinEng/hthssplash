class Admin::CoursesController < ApplicationController
  before_filter :authenticate
  def index
    @courses = Course.all
  end

  def show
    @course = Course.friendly.find(params[:id])
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(params[:course])
    debugger
    if @course.save
      flash[:notice] = "Successfully created course! :)"
      redirect_to admin_courses_path
    else
      flash[:error] = "Course creation failed :("
      render 'new'
    end
  end

  def edit
    @course = Course.friendly.find(params[:id])
  end

  def update
    debugger
    @course = Course.friendly.find(params[:id])
    if @course and @course.update_attributes(params[:course])
      flash[:notice] = "Successfully updated course! :)"
      redirect_to admin_courses_path
    else
      flash[:error] = "Course update failed :("
      render 'edit'
    end
  end

  def destroy
    @course = Course.friendly.find(params[:id])
    @course.delete
    redirect_to admin_courses_path
    flash[:notice] = "Successfully deleted course! :)"
  end

  private
    def authenticate
      unless current_user.try(:admin?)
        redirect_to new_user_session_path
      end
    end
end
