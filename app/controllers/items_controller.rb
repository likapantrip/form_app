class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    Item.create(item_params)
    redirect_to '/items'
  end

  private
  def item_params
    params.require(:item).permit(:name, :price)
  end
end