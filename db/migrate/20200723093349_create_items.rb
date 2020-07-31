class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.string :price, null: false
      t.string :description, null: false
      t.string :stok, null: false
      t.integer :condetionid, null: false, foreign_key: true
      t.integer :shipping_cost_id, null: false, foreign_key: true
      t.integer :shipping_time_id, null: false, foreign_key: true
      t.integer :prefectuer_id, null: false, foreign_key: true
      t.integer :category_id, null: false, foreign_key: true
      t.integer :brand_id, foreign_key: true
      t.bigint :user_id, 	null: false, foreign_key: true
      t.timestamps 
    end
  end
end
