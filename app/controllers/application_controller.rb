class ApplicationController < ActionController::API

  def current_user
  User.first
  # practice version of "logged in"
  end

  def logged_in?
    !!current_user
  end
end
