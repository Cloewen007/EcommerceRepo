class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :id
      t.integer :prod_id
      t.integer :cust_id
      t.datetime :orderdate
      t.integer :qty_ordered

      t.timestamps
    end
  end
end
