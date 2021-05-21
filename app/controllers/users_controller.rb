class UsersController < ApplicationController
  # before_action :set_user, only: [:edit, :show, :update, :destroy]
  
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to user_path(@user)
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to edit_user_path
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to root_path
  end

  private
  def user_params
    params.require(:user).permit(:company_name, :email, :password, :zip_code, :password_confirmation, :prefecture_id, :address)
  end
  # def set_user
  #   @user = User.find(params[:id])
  # end
end
