class Public::OrdersController < ApplicationController
  def ready
    @order = Order.new(order_params)
    @address = Address.find(params[:order][:address_id])
    if @order.save
      @order.postal_code = current_customer.postal_code
      @order.address = current_customer.address
      @order.name = current_customer.first_name + current_customer.last_name
    elsif @order.save
      @addresses = @order.address_id
      @order.postal_code = @address.postal_code
      @order.address = @address.address
      @order.name = @address.name
    else @order.save
      @address = Address.new
      @order.postal_code = @address.postal_code
      @order.address = @address.address
      @order.name = @address.name
    end
  end

  def new
    @order.postal_code = current_customer.postal_code
    @order.address = current_customer.address
    @order.name = current_customer.first_name + current_customer.last_name
    @addresses = @order.address_id
    @order.postal_code = @address.postal_code
    @order.address = @address.address
    @order.name = @address.name
    @address = Address.new
  end

  def create
    @order = Order.new(order_params)
    @order.customers_id = current_customer.id
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
