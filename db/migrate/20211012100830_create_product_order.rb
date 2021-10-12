class CreateProductOrder < ActiveRecord::Migration[6.0]
  def change
    create_table :product_orders do |t|
      t.belongs_to :product
      t.belongs_to :order
    end
  end
end
