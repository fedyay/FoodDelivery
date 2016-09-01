class PagesController < ApplicationController
	def rests
		@rests = Rest.all
	end

	def dishes
		@rest = Rest.find(params[:id])
		@categories = @rest.categories.to_a
	end

	def adder
		num = params.keys
		num = num[0].to_i
		@dish = Dish.find(num)
		@dish.counter += 1
		@dish.save
		render 'blank'
	end

	def deleter
		num = params.keys
		num = num[0].to_i
		@dish = Dish.find(num)
		@dish.counter = 0
		@dish.save
		respond_to do |format|
	    format.js
	  end
	end

	def alldeleter
		@dishes = Dish.all
		@dishes.each do |dish|
			dish.counter = 0
			dish.save
		end
		respond_to do |format|
	    format.js
	  end
	end
end