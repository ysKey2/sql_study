class CreateClickets < ActiveRecord::Migration
  def change
    create_table :clickets do |t|
      t.integer :user_id
      t.float :average_mark

      t.timestamps null: false
    end
  end
end
