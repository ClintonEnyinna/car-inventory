class ApplicationController < ActionController::Base
  include SessionsHelper

  def logged_in?
    redirect_to login_path if current_user.nil?
  end

  def is_admin?
    return if current_user.admin?

    redirect_to cars_path
  end
end
