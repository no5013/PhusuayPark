class PageControllerController < ApplicationController
  def home
  end

  def rooms
  end

  def services
  end

  def activities
  end

  def about
  end

  def contact_us
  end

  def book
  end

  def admin
    unless user_signed_in?
      redirect_to new_user_session_path
    end
  end
end
