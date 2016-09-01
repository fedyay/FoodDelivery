class AddCategoryToDish < ActiveRecord::Migration
  def change
    add_reference :dishes, :category, index: true, foreign_key: true
  end
end
