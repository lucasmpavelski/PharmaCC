class CreateSells < ActiveRecord::Migration
  def change
    create_table :sells do |t|
      
      t.references :user
      t.timestamps
    end
  end
end
