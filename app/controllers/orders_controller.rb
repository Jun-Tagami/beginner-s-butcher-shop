class OrdersController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  # 復習用→ログアウト状態のユーザーは、URLを直接入力して商品購入ページに遷移しようとすると、商品の販売状況に関わらずログインページに遷移すること
  def new
    # 復習用→フォームオブジェクトのインスタンスを生成し、インスタンス変数に代入する
    @order = Order.new(reserve_amount: order_params[:reserve_amount])
    @item = Item.find(order_params[:item_id])
  end

  def create
    # フロントから送信されたデータを受け取って、新規のorderオブジェクトを作成してインスタンス変数に代入する
    @order = current_user.orders.build(order_params)
    @item = Item.find(params[:order][:item_id])
    # オーダーオフジェクトを保存する。保存ができたらトップページにリダイレクトする。
    if @order.save
      redirect_to root_path
    # オーダーオブジェクトの保存が失敗したら注文画面に戻る。
    else
      render :new
    end
  end

  private

  def order_params
    params.require(:order).permit(
      :user, :item_id,
      :reserve_amount,
      :reserve_date,
      :reserve_time_id,
      :order_name,
      :order_zip_code,
      :prefecture_id,
      :order_address,
      :payment
    )
  end

  # def order_params
  #   params.require(:orders).permit(:postal_code, :area_id, :municipalities, :house_number, :building_name, :phone_number).merge(
  #     user_id: current_user.id, item_id: params[:item_id], token: params[:token]
  #   )
  # end

  def pay_item
    Payjp.api_key = ENV['PAYJP_SECRET_KEY']
    Payjp::Charge.create(
      amount: @item.price, # 商品の値段
      card: order_params[:token], # カードトークン
      currency: 'jpy'                 # 通貨の種類（日本円）
    )
  end
end
