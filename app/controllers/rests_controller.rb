class RestsController < ApplicationController
  def index
  	@rests = Rest.all
  end

  def new
  	@rest = Rest.new
  end

  def create
  	@rest = Rest.new(rest_params)

  	if @rest.save
  		redirect_to rests_path
  	else
  		render 'new'
  	end
  end

  def show
    @rest = Rest.find(params[:id])
    @dishes = @rest.dishes.to_a
  end

  def edit
    @rest = Rest.find(params[:id])
  end

  def update
    @rest = Rest.find(params[:id])

    if @rest.update(rest_params)
      redirect_to rests_path
    else
      render 'edit'
    end
  end

  def destroy
  	Rest.destroy(params[:id])
    redirect_to rests_path
  end

  private

  def rest_params
    rest_params = params.require(:rest).permit(:title, :description, :image)
  end
end
