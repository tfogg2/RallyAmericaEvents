class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :authenticate_user!

  def authenticate_active_admin_user!
    authenticate_user!
    unless current_user.admin?
      flash[:alert] = "Unauthorized Access!"
      redirect_to root_path
    end
  end

  def access_denied(exception)
    redirect_to root_path, alert: exception.message
  end
end
