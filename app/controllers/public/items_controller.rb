class Public::ItemsController < ApplicationController
  def index
  end

  def show
  end

  private
  def item_params
    params.require(item_params).permit(:genre_id, :name, :introduction, :price, :is_active)
  end
end
