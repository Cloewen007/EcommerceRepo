class Product < ActiveRecord::Base
  validates_presence_of :name, :description, :price, :category_id, :quantity
  belongs_to :Order
end
