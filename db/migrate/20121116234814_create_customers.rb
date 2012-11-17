class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer :id
      t.string :name
      t.string :postalcode
      t.string :street
      t.string :city
      t.string :province

      t.timestamps
    end
  end
end
