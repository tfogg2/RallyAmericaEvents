class UsersController < ApplicationController
  # before_action :authorize_admin, only: :create

  def create
    # admins only
  end

  def show
    @user = User.find(params[:id])
    @volunteers = @user.volunteers.all
  end

  private

  # This should probably be abstracted to ApplicationController
  # as shown by diego.greyrobot
  def authorize_admin
    return unless !current_user.admin?
    redirect_to root_path, alert: 'Admins only!'
  end
end
