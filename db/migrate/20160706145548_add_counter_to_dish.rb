class AddCounterToDish < ActiveRecord::Migration
  def change
    add_column :dishes, :counter, :integer
  end
end
