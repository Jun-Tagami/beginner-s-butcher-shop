class OwnerReserveController < ApplicationController
  before_action :authenticate_owner!, only: [:index]

  def index
    @user = User.all
    @reserves = Reserve.all
    @order = Order.all
  end
end
