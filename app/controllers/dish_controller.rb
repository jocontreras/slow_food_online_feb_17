class DishController < ApplicationController

  def show
    @dish = Dish.find(params[:id])
  end

  def edit
  end
end
