class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :destroy]

  def index
    @items = Item.where(category_id: params[:category_id]).order("created_at DESC")
  end

  def new
    @items = Item.includes(:user).limit(10).order("created_at DESC")
    @items = Item.where(category_id: params[:category_id]).order("created_at DESC")
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
      redirect_to item_path
    else
      render :edit
    end
  end
  

  private
  def item_params
    params.require(:item).permit(:image, :name, :price, :amount, :detail, :locality, :expiry_date, :preservation, :category_id)
  end

  def set_item
    @item = Item.find(params[:id])
  end

end
