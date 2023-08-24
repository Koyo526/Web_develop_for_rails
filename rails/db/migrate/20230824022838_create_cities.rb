class CreateCities < ActiveRecord::Migration[7.0]
  def change
    create_table :cities do |t|
      t.references :prefectures, null: false, foreign_key: true #都道府県ID
      t.string :name, null: false #市区町村名
      t.timestamps
    end
  end
end
