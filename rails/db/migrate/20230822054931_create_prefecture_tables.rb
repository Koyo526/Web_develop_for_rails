class CreatePrefectureTables < ActiveRecord::Migration[7.0]
  def change
    create_table :prefecture_tables, id: false do |t|
      t.integer :prefecture_id, null: false, primary_key: true
      t.string :prefecture_name
      t.timestamps
    end
  end
end
