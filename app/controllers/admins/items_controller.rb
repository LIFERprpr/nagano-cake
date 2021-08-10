class Admins::ItemsController < ApplicationController

  def index
    @items = Item.page(params[:page]).order("id ASC")
  end
  
  def show
    
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to admins_root_path
  end

  private
  def item_params
    params.require(:item).permit(:name, :image, :introduction, :price, :genre_id, :is_active)
  end

end