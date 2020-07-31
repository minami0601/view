class CreateItemImags < ActiveRecord::Migration[6.0]
  def change
    create_table :item_imags do |t|
      t.string :image, null: false
      t.bigint :item_id, null: false, foreign_key: true
      t.timestamps
    end
  end
end
