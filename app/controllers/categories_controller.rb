class CategoriesController < ApplicationController
  http_basic_authenticate_with name: "admin", password: "admin"
  layout 'admin'
  def index
    @category = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to rests_path
    else
      render 'new'
    end
  end

  def destroy
    Category.destroy(params[:id])
    redirect_to rests_path
  end

  private

  def category_params
    category_params = params.require(:category).permit(:title, :rest_id)
  end
end
