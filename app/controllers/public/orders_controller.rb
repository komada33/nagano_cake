class Public::OrdersController < ApplicationController
  def confirm
    @order = Order.new(order_params)
    @address = Address.find(params[:order][:address_id])
    @order.postal_code = @address.postal_code
    @order.address = @address.address
    @order.name = @address.name
  end

  def new
  end

  def create
    @order = Order.new(order_params)
    @order.customers_id = current_customer.id
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
