class OwnerReserveController < ApplicationController
  before_action :authenticate_owner!, only: [:index]
  def index
    @user = User.all
    @reserves = Reserve.all
    @order = Order.all

  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    if @order.update(order_params)
      redirect_to owner_reserve_index_path
    else
      render :edit
    end
  end

  private

  def order_params
    params.require(:order).permit(:user, :item, :reserve_amount, :payment, :reserve_date, :reserve_time_id, :order_name,
                                  :phone_number, :order_zip_code, :prefecture_id, :order_address, :memo)
  end
end
