class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.references :order
      t.string :name
      t.decimal :price
      t.integer :quantity

      t.timestamps
    end
  end
end
