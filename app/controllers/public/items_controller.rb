class Public::ItemsController < ApplicationController
  def index
    @items = Item.all
    @genre = Genre.all
  end

  def show
    @customer = current_customer
    @item = Item.find(params[:id])
    @cart_item = CartItem.new
  end

  private
  def item_params
    params.require(:item_params).permit(:genre_id, :name, :introduction, :price, :is_active)
  end
end
