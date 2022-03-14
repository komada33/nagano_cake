class Public::ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
  end

  private
  def item_params
    params.require(item_params).permit(:genre_id, :name, :introduction, :price, :is_active)
  end
end
