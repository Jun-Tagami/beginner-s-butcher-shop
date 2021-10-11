class OwnerReserveController < ApplicationController
  def index
    @user = User.all
    @reserves = Reserve.all
    @order = Order.all

    # @order = current_user.orders.build(order_params)
    # @item = Item.find(params[:order][:item_id])

  end
end
