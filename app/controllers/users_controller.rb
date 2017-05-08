class UsersController < ApplicationController
  def index
    @user = current_user

    if !@user.admin?
      flash[:notice] = "You don't have permission to access this page!"
      redirect_to @user
    end
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    if current_user.admin?
      @user.destroy
      redirect_to '/users'
    else
      flash[:notice] = 'You do not have permission to delete users!'
      redirect_to '/'
    end
  end
end
