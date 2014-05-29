class HomeController < ApplicationController
  def index
    if user_signed_in?
      @courses = current_user.courses
    end
  end

  def about
  end

  def faq
  end

  def contact
  end

  def registration
  end

  def docs
  end

  def essentials
  end

  def register

  end
end
