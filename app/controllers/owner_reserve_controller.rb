class OwnerReserveController < ApplicationController
  before_action :authenticate_user!, only: [:index]
  before_action :authenticate_owner!, only: [:index]

  def index
    if user_signed_in? && owner_signed_in?
      @user = User.all
      @reserves = Reserve.all
      @order = Order.all
    else
     render :home_index_path
    end
  end
end
