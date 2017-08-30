class CreateOrderLineItems < ActiveRecord::Migration
  def change
    create_table :order_line_items do |t|
      t.integer :order_id
      t.integer :product_id
      t.float :price
      t.integer :quantity
      t.float :total

      t.timestamps null: false
    end
  end
end
