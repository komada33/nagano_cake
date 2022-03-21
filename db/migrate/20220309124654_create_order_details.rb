class CreateOrderDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :order_details do |t|
      t.integer :items_id, foregin_key: true
      t.integer :orders_id, foregin_key: true
      t.integer :price
      t.integer :amount
      t.integer :making_status

      t.timestamps
    end
  end
end
