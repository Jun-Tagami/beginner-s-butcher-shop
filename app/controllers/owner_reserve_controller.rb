class OwnerReserveController < ApplicationController
  def index
    @users = User.all
    @reserves = Reserve.all
    @orders = Order.all

    # @order = current_user.orders.build(order_params)
    # @item = Item.find(params[:order][:item_id])
  end
end
