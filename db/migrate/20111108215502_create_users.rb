class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :rg
      t.string :cpf
      t.string :address
      t.string :phone

      t.timestamps
    end
  end
end
