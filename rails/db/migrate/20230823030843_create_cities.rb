class CreateCities < ActiveRecord::Migration[7.0]
  def change
    create_table :cities do |t|
      t.integer :city_id, null: false
      t.references :prefectures, null: false, foreign_key: true
      t.string :name
      t.timestamps
    end
  end
end
