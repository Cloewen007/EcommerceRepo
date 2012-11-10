class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :id
      t.integer :product_id
      t.datetime :orderdate
      t.integer :qty_ordered
      t.string :status

      t.timestamps
    end
  end
end
