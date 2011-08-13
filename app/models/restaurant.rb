class Restaurant < ActiveRecord::Base
  has_many :menu_items, :dependent => :destroy
  has_many :orders
  accepts_nested_attributes_for :menu_items, :reject_if => lambda { |a| a[:name].blank? || a[:price].blank?}, :allow_destroy => true
  validates_presence_of :name
end
