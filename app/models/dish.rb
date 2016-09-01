class Dish < ActiveRecord::Base
	belongs_to :rest
	belongs_to :category

  acts_as_shopping_cart_item_for :cart
end
