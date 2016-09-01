class RestsController < ApplicationController
  http_basic_authenticate_with name: "admin", password: "admin"
  layout 'admin'
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
      upl_pic
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
      upl_pic
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

  def upl_pic
    upl_file = params[:rest][:image]
    unless upl_file.nil?
      new_file_path = Rails.root.join('public', 'upl', 'rests', @rest.title.to_s + '.png')
      File.open(new_file_path, "wb") do |file|
        file.write upl_file.read
      end
    end
    @rest.image = @rest.title.to_s + '.png'
    @rest.save
  end
end
