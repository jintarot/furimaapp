class ItemsController < ApplicationController
  def index
    @item = Item.all
  end
  def new
    @item = Item.new
  end
  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    end
  end
  private
  def item_params
    params.require(:item).permit(:name,:text,:image,:category,:status,:price)
  end
end
