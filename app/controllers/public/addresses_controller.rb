class Public::AddressesController < ApplicationController
  def index
  end

  def edit
  end

  def create
  end

  def update
  end

  def dstroy
  end

  private
  def address_params
    params.require(:address_params).permit(:customer_id, :name, :postal_code, :address)
  end
end
