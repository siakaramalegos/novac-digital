class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Create a method that restricts access to only admins
  def authenticate_admin!
    raise SecurityError unless current_user.try(:admin?)
  end

  # Create a method that restricts access to only admins
  def authenticate_vip_or_admin!
    raise SecurityError unless current_user.try(:admin?) || current_user.try(:vip?)
  end

  rescue_from SecurityError do
    redirect_to :back, alert: "You do not have access to that feature."
  end
end
