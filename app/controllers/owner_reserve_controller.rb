class OwnerReserveController < ApplicationController
  def index
    @user = User.all
    @reserves = Reserve.all
    @order = Order.all

    # @order = current_user.orders.build(order_params)
    # @item = Item.find(params[:order][:item_id])
  end

  def edit
    @order = Order.find(params[:id])
    # redirect_to order_path(@order) unless @order == current_order
  end

  def update
    @order = Order.find(params[:id])
    if @order.update(order_params)
      redirect_to owner_path
    else
      render :edit
    end
  end

end
