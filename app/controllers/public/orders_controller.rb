class Public::OrdersController < ApplicationController
  def new
  end

  def ready
  end

  def thanks
  end

  def index
  end

  def show
  end

  private
  def order_params
    params.require(:order).permit(:customers_id, :postal_code, :address, :name, :shipping_cost, :total_payment, :payment_method, :status)
  end
end
