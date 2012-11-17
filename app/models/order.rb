class Order < ActiveRecord::Base
has_many :Products
validates_presence_of :prod_id, :cust_id, :qty_ordered
has_one :Customer
end

