class Public::CartItemsController < ApplicationController
  def index
  end

  private
  def cart_item_paramds
    params.require(:cart_item).permit(:item_id, :amount)
  end
end
