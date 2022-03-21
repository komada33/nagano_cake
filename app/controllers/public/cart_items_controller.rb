class Public::CartItemsController < ApplicationController
  def index
    @cart_items = CartItems.all
  end

  def create
    @item = Item.find(cart_item_params[:id])
  end

  private
  def cart_item_params
    params.require(:cart_item).permit(:item_id, :customer_id, :amount)
  end
end
