class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :code
      t.references :provider
      t.decimal :price
      t.integer :amount
      t.string :laboratory

      t.timestamps
    end
    add_index :products, :provider_id
  end
end
