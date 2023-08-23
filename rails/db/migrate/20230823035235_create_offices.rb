class CreateOffices < ActiveRecord::Migration[7.0]
  def change
    create_table :offices do |t|
      t.references :companies, null: false, foreign_key: true
      t.integer :ieul_id, null: false
      t.integer :ieul_office_id, null: false
      t.string :name
      t.string :post_number
      t.integer :prefecture_id, null: false
      t.references :cities, null: false, foreign_key: true
      t.string :address, null: false
      t.string :logo_url, null: false
      t.integer :phone_number
      t.integer :fax_number
      t.string :business_time
      t.string :regular_holiday
      t.string :catch_copy, null: false
      t.text :introducion, null: false
      t.string :available_area, null: false
      t.timestamps
    end
  end
end
