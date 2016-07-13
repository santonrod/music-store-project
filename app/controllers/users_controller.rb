class UsersController < Devise::RegistrationsController
   before_action :configure_permitted_parameters, only: [:create]
  before_filter :configure_account_update_params, only: [:update]

  def create
   super
  end

  # GET /resource/edit
  def edit
    super
  end

  # PUT /resource
  def update
    super
  end

  # DELETE /resource
   def destroy
    super
   end

   def show
    @user = User.find(params[:id])

   end 

  def index
    super
  end  

 protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:name, :owner, :email, :password, :password_confirmation, :avatar, :avatar_cache)
    end
  end

  def configure_account_update_params
    devise_parameter_sanitizer.for(:account_update)do |u|
      u.permit(:name, :owner, :email, :password, :password_confirmation, :current_password, :avatar, :avatar_cache)
    end
  end
end
