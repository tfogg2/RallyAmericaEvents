class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

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

  def configure_permitted_parameters
    update_attrs = [:password, :password_confirmation, :current_password, :name, :avatar, :email]
    devise_parameter_sanitizer.permit :account_update, keys: update_attrs
  end

  # def configure_permitted_parameters
  #   update_attrs = [:avatar, :name, :current_password, :password, :password_confirmation, :current_password]
  #   devise_parameter_sanitizer.permit :account_update, keys: update_attrs
  # end
  #

end
