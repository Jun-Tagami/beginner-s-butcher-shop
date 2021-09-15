class OwnerReserveController < ApplicationController
  def index
    @users = User.all
    @reserves = Reserve.all
  end
end
