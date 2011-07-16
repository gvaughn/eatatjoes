class MenuItemReferences < ActiveRecord::Migration
  def up
    add_column :menu_items, :restaurant_id, :integer, :references => :restaurants 
  end

  def down
    remove_column :menu_items, :restaurant_id
  end
end
