class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :id
      t.string :name
      t.string :description
      t.integer :quantity
      t.float :price
      t.integer :category_id
      t.string :img_url

      t.timestamps
    end
  end
end
