class Admin::GenresController < ApplicationController
  def index
  end

  def edit
  end

  private
  def genres_params
    params.require(genres_params).permit(:name)
  end
end
