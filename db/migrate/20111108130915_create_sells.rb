class CreateSells < ActiveRecord::Migration
  def change
    create_table :sells do |t|

      t.timestamps
    end
  end
end
