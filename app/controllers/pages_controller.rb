class PagesController < ApplicationController
	def rests
		@rests = Rest.all
	end

	def dishes
		@rest = Rest.find(params[:id])
		@categories = @rest.categories.to_a
	end

	def adder
	end

	def deleter
	end

	def alldeleter
	end
end