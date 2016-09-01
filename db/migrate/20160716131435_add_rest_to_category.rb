class AddRestToCategory < ActiveRecord::Migration
  def change
    add_reference :categories, :rest, index: true, foreign_key: true
  end
end
