class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.text :dishes

      t.timestamps null: false
    end
  end
end
