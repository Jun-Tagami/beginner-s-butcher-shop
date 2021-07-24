class OrdersController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  # 復習用→ログアウト状態のユーザーは、URLを直接入力して商品購入ページに遷移しようとすると、商品の販売状況に関わらずログインページに遷移すること
  def new
    # 復習用→フォームオブジェクトのインスタンスを生成し、インスタンス変数に代入する
     @order = Order.new
     @item = Item.find(params[:item_id])
  end

  def create
    @order= Order.new(order_params)
    @item = Item.find(params[:order][:item_id])
    # if @order.valid?
    #   pay_item
    #   @order.save
    #   redirect_to root_path
    # else
    #   render action: :index
    # end
  end

private

def order_params
  params.require(:order).permit(:postal_code, :area_id, :municipalities, :house_number, :building_name, :phone_number).merge(
    user_id: current_user.id, item_id: params[:item_id], token: params[:token]
  )
end 

def pay_item
  Payjp.api_key = ENV['PAYJP_SECRET_KEY']
  Payjp::Charge.create(
    amount: @item.price,  # 商品の値段
    card: order_params[:token],    # カードトークン
    currency: 'jpy'                 # 通貨の種類（日本円）
  )
end

end
