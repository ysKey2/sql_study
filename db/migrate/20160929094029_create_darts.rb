class CreateDarts < ActiveRecord::Migration
  def change
    create_table :darts do |t|
      t.integer :user_id
      t.string :brand
      t.string :name

      t.timestamps null: false
    end
  end
end
