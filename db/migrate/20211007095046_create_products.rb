class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.float :price
      t.string :sku
      t.integer :quantity
      t.references :region, null: false, foreign_key: true

      t.timestamps
    end
  end
end
