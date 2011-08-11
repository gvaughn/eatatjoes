class UserRestaurantRelation < ActiveRecord::Migration
  def up
    add_column :restaurants, :user_id, :integer, :references => :users
  end

  def down
    remove_column :restaurants, :user_id
  end
end
