class CreateCityTables < ActiveRecord::Migration[7.0]
  def change
    create_table :city_tables do |t|
      t.integer :city_id
      t.integer :prefecture_id
      t.string :city_name
      t.timestamps
    end
  end
end
