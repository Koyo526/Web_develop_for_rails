class CreateStoreTables < ActiveRecord::Migration[7.0]
  def change
    create_table :store_tables, id: false do |t|
      t.integer :store_id, null: false, primary_key:true
      t.integer :company_id
      t.string :store_name
      t.string :post_number
      t.integer :prefecture_id
      t.integer :city_id
      t.string :address
      t.timestamps
    end
  end
end
