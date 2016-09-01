class AddRestToDish < ActiveRecord::Migration
  def change
    add_reference :dishes, :rest, index: true, foreign_key: true
  end
end
