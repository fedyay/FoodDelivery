class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :title
      t.float :price
      t.text :description
      t.integer :counter, :default => 0

      t.timestamps null: false
    end
  end
end
