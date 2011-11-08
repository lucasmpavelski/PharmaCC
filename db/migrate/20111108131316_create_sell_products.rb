class CreateSellProducts < ActiveRecord::Migration
  def change
    create_table :sell_products do |t|
      t.references :sell
      t.references :product

      t.timestamps
    end
    add_index :sell_products, :sell_id
    add_index :sell_products, :product_id
  end
end
