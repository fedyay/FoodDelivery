class Dish < ActiveRecord::Base
	belongs_to :rest
	belongs_to :category
end
