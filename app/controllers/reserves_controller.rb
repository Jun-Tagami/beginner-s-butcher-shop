class OrdersController < ApplicationController
  before_action :authenticate_user!, only: [:index, :create]
  before_action :authenticate_owner!, only: [:index, :create]
  before_action :ordersopen, only: [:index, :create]

  def index
    if user_signed_in? && owner_signed_in?
      @order_address = OrderAddress.new
    else
     render :home_index_path
    end
  end

  def create
    @order_address = OrderAddress.new(order_params)
    if @order_address.valid?
      pay_item
      @order_address.save
      redirect_to root_path
    else
      render action: :index
    end
  end
end

private

def order_params
  # 復習用→ 後々、requireを入力する（今はerrorができるので抜いている）
  params.require(:order_address).permit(:postal_code, :area_id, :municipalities, :house_number, :building_name, :phone_number).merge(
    user_id: current_user.id, item_id: params[:item_id], token: params[:token]
  )
end

def ordersopen
  @item = Item.find(params[:item_id])
  redirect_to root_path if @item.user.id == current_user.id || !@item.order.nil?
end
