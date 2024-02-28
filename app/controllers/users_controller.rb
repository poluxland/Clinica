class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:edit, :update]
  before_action :require_admin, only: [:edit, :update] # Custom method to restrict access


   def index
    @users = User.where(role: 0)
  end

  def profesores
   @users = User.where(role: [1, 2])
end


  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to users_path, notice: 'User was successfully updated.'
    else
      render :edit
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :name, :admin) # List the attributes you allow to be updated
  end

  def require_admin
    unless current_user.admin?
      redirect_to root_path, alert: 'You are not authorized to perform this action.'
    end
  end
end
