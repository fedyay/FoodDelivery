class CreateRests < ActiveRecord::Migration
  def change
    create_table :rests do |t|
      t.string :title
      t.string :image
      t.text :description

      t.timestamps null: false
    end
  end
end
