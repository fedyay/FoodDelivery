class Category < ActiveRecord::Base
	belongs_to :rest
	has_many :dishes
end
