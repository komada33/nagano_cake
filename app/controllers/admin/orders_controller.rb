class Admin::OrdersController < ApplicationController
  def show
  end

  private
  def order_params
    params.require(order_params).permit(:customers_id, :postal_code, :address, :name, :shipping_cost, :total_payment, :payment_method, :status)
  end
end
