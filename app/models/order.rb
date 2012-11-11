class Order < ActiveRecord::Base
  has_many :Products
  validates_presence_of :product_id, :customer_id, qty_ordered
end
