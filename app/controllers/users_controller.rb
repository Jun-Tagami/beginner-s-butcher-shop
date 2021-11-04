class UsersController < ApplicationController
  before_action :correct_user, only: [:show, :edit, :update, :destroy]

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
    redirect_to user_path(@user) unless @user == current_user
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      bypass_sign_in(@user)
      redirect_to user_path
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
    params.require(:user).permit(:company_name, :email, :password, :zip_code, :password_confirmation, :prefecture_id, :address,
                                 :company_tel)
  end

  def correct_user
    @user = User.find(params[:id])
    redirect_to root_path if current_user != @user
  end
end
