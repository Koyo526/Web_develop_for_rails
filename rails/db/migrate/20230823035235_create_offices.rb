class CreateOffices < ActiveRecord::Migration[7.0]
  def change
    create_table :offices do |t|
      t.references :companies, null: false, foreign_key: true
      t.integer :office_id, null: false
      t.integer :ieul_id
      t.integer :ieul_office_id
      t.string :name
      t.string :post_number
      t.integer :prefecture_id
      t.references :cities, null: false, foreign_key: true
      t.string :address
      t.string :logo_url
      t.integer :fax_number
      t.string :business_time
      t.string :regular_holiday
      t.string :catch_copy
      t.text :introducion
      t.string :available_area
      t.timestamps
    end
  end
end
