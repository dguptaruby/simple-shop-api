class RemoveOrderIdFromProducts < ActiveRecord::Migration[6.0]
  def change
    if ActiveRecord::Base.connection.column_exists?(:products, :order_id)
      remove_column :products, :order_id
    end
  end
end
