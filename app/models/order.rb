class Order < ActiveRecord::Base
  has_many :order_items, :dependent => :destroy
  accepts_nested_attributes_for :order_items, :reject_if => lambda { |a| a[:name].blank? || a[:price].blank? || a[:quanitity].blank?}, :allow_destroy => true
end
