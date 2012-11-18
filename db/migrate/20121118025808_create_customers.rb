class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer, :id
      t.string, :name
      t.string, :postal_code
      t.string, :street
      t.string, :city
      t.string, :province
      t.integer :order_id

      t.timestamps
    end
  end
end
