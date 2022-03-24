class Public::CartItemsController < ApplicationController
  def index
    @cart_items = CartItem.all
  end

  def create
    @item = Item.find(cart_item_params[:item_id])
    @cart_item = CartItem.new(cart_item_params)
    @cart_item.save
    redirect_to cart_items_path
  end

  def update
    @item = Item.find(cart_item_params[:item_id])
    @item.update(cart_item_params)
    redirect_to cart_items_path
  end

  def destroy
    item = Item.find(cart_item_params[:item_id])
    item.destroy
    redirect_to cart_items_path
  end

  def destroy_all
    @cart_items = CartItem.all
    CartItem.destroy_all(:item_id)
    redirect_to item_path
  end


  private
  def cart_item_params
    params.require(:cart_item).permit(:item_id, :customer_id, :amount)
  end
end
