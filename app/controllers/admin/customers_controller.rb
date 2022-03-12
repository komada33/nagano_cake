class Admin::CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def show
  end

  def edit
  end

  private
  def customer_params
    params.require(:customer).permit(:customer_id, :last_name, :first_name, :last_name_kana, :first_name_kana, :email, :postal_code, :address, :telephone_number, :is_deleted)
  end
end
