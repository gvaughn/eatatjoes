class Order < ActiveRecord::Base
  has_many :order_items, :dependent => :destroy
  belongs_to :restaurant
  belongs_to :user
  
  def order_items_attributes=(parms_hash)
    parms_hash.each {|k,v| order_items.build v unless v[:quantity].to_i == 0 }
  end
end
