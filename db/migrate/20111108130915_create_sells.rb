class CreateSells < ActiveRecord::Migration
  def change
    create_table :sells do |t|
      
      t.references :user_id
      t.timestamps
    end
  end
end
