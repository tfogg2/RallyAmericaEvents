class RegistrationsController < Devise::RegistrationsController
  before_action :authenticate_user!, :redirect_unless_admin,  only: [:new, :create]
  prepend_before_action :require_no_authentication, only: :cancel

  private
  def redirect_unless_admin
    unless current_user.try(:admin?)
      flash[:error] = "Only admins can do that"
      redirect_to root_path
    end
  end

  def sign_up(resource_name, resource)
    true
  end

  def sign_up_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :avatar)
  end

  protected

    def after_update_path_for(resource)
      user_path(resource)
    end

end
