class DishesController < ApplicationController
  def index
  	@dish = Dish.all
  end

  def new
  	@dish = Dish.new
  end

  def create
  	@dish = Dish.new(dish_params)

  	if @dish.save
  		redirect_to rests_path
  	else
  		render 'new'
  	end
  end

  def edit
    @dish = Dish.find(params[:id])
  end

  def update
    @dish = Dish.find(params[:id])

    if @dish.update(dish_params)
      redirect_to rests_path
    else
      render 'edit'
    end
  end

  def destroy
  	Dish.destroy(params[:id])
    redirect_to rests_path
  end

  private

  def dish_params
    dish_params = params.require(:dish).permit(:title, :price, :description, :counter, :category_id, :rest_id)
  end
end
