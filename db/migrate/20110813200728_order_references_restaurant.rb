class OrderReferencesRestaurant < ActiveRecord::Migration
  def up
    add_column :orders, :restaurant_id, :integer, :references => :restaurants 
  end

  def down
    remove_column :orders, :restaurant_id
  end
end
