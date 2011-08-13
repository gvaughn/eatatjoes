class OrderReferencesRestaurant < ActiveRecord::Migration
  def up
    add_column :order, :restaurant_id, :integer, :references => :restaurants 
  end

  def down
    remove_column :order, :restaurant_id
  end
end
