class Rest < ActiveRecord::Base
	has_many :dishes
	has_many :categories
end
