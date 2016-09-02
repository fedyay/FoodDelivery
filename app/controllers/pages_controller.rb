class PagesController < ApplicationController
	def rests
		@rests = Rest.all
	end

	def dishes
		@rest = Rest.find(params[:id])
		@categories = @rest.categories.to_a
	end

	def adder
		if Cart.last == nil
			@cart = Cart.create()
		end
  	@cart = Cart.last
		@dish = Dish.find(params[:format])
		if @dish.counter == nil
      @dish.counter = 0
    end
    if @dish.rest.id == @cart.cur_rest || @cart.cur_rest == nil
    	@cart.cur_rest = @dish.rest.id.to_i
    	@cart.save
    else
    	flash[:danger] = "You have added a dish from another restaurant. Your cart has been reset."
    	@cart.destroy
    	@cart = Cart.create
    	redirect_to alldeleter_path and return
    end
		@dish.counter += 1
		@dish.save
		redirect_to forest_show_path(@dish.rest.id) and return
	end

	def deleter
		@dish = Dish.find(params[:format])
		@dish.counter = 0
		@dish.save
		redirect_to forest_show_path(@dish.rest.id)
	end

	def alldeleter
		@dishes = Dish.all
		@dishes.each do |dish|
			dish.counter = 0
			dish.save
		end
		redirect_to forest_show_path(@dishes.first.rest.id)
	end
end