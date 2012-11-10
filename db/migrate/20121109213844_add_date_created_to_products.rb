class AddDateCreatedToProducts < ActiveRecord::Migration
  def change
    add_column :products, :date_created, :datetime

  end
end
