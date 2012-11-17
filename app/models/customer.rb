class Customer < ActiveRecord::Base
  has_one :Order
  validates_presence_of :order_id, :name, :postalcode, :province
end
