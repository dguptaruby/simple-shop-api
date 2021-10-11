class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :customer_name
      t.string :shipping_address
      t.float :order_total
      t.datetime :paid_at

      t.timestamps
    end
  end
end
