class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :name
      t.string :cnpj
      t.string :address
      t.references :city
      t.string :phone

      t.timestamps
    end
    add_index :providers, :city_id
  end
end
