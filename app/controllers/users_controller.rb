class UsersController < Devise::RegistrationsController
  # before_action :authorize_admin, only: :create
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  # before_action :set_s3_direct_post, only: [:new, :edit, :create, :update]


  def create
    # admins only
  end



  def show
    @user = User.find(params[:id])
    # @volunteers = @user.volunteers.all
    @volunteer = @user.volunteers.last
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      # Sign in the user by passing validation in case their password changed
      bypass_sign_in(@user)
      redirect_to show_user_path(@user)
    else
      render "edit"
    end
  end

  private

    # def set_s3_direct_post
    #   @s3_direct_post = S3_BUCKET.presigned_post(key: "uploads/#{SecureRandom.uuid}/${filename}", success_action_status: '201', acl: 'public-read')
    # end
    def set_user
      @user = User.find(params[:id])
    end

  # This should probably be abstracted to ApplicationController
  # as shown by diego.greyrobot

  def authorize_admin
    return unless !current_user.admin?
    redirect_to root_path, alert: 'Admins only!'
  end

  def user_params
    params.require(:user).permit(:name, :email, :avatar, :password, :password_confirmation)
  end

end
