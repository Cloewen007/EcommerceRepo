class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer, :id
      t.integer, :product_id
      t.integer, :customer_id
      t.datetime, :orderdate
      t.qty_ordered :

      t.timestamps
    end
  end
end
