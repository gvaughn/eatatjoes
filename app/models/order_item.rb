class OrderItem < ActiveRecord::Base
  validates_presence_of :name, :price, :quantity
end
