class Admin::ItemsController < ApplicationController
  # before_action :if_not_admin
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_owner!, only: [:index, :new, :create, :show, :edit, :update, :destroy]

  def index
    @items = Item.order('created_at DESC')
  end

  def new
    @items = Item.includes(:user).limit(10).order('created_at DESC')
    @items = Item.where(category_id: params[:category_id]).order('created_at DESC')
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    if @item.update(item_params)
      redirect_to admin_item_path
    else
      render :edit
    end
  end

  def destroy
    @item.destroy
    redirect_to root_path
  end

  private

  def item_params
    params.require(:item).permit(:image, :name, :price, :amount, :detail, :locality, :expiry_date, :preservation, :category_id)
  end

  # def if_not_admin
  #   redirect_to root_path unless current_user.admin?
  # end

  def set_item
    @item = Item.find(params[:id])
  end
end
