class CreateZeroOnes < ActiveRecord::Migration
  def change
    create_table :zero_ones do |t|
      t.integer :user_id
      t.float :average_point

      t.timestamps null: false
    end
  end
end
