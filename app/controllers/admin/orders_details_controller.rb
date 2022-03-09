class Admin::OrdersDetailsController < ApplicationController

private
def order_details_parms
  params.require(order_details_parms).permit(:item_id, :order_id, :price, :amount, :making_status)
end
