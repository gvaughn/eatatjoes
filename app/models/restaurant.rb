class Restaurant < ActiveRecord::Base
  has_many :menu_item
  validates_presence_of :name
end
