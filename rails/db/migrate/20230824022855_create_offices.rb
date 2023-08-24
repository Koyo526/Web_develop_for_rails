class CreateOffices < ActiveRecord::Migration[7.0]
  def change
    create_table :offices do |t|
      t.references :companies, null: false, foreign_key: true #企業ID
      t.integer :ieul_id, null: false #イエウールID
      t.integer :ieul_office_id, null: false #イエウール店舗ID
      t.string :name #店舗名
      t.string :post_number #郵便番号
      t.integer :prefecture_id, null: false #都道府県ID
      t.references :cities, null: false, foreign_key: true #市町村ID
      t.string :address, null: false #住所
      t.string :logo_url, null: false #ロゴURL
      t.integer :phone_number #電話番号
      t.integer :fax_number #FAX番号
      t.string :business_time #営業時間
      t.string :regular_holiday #定休日
      t.string :catch_copy, null: false #キャッチコピー
      t.text :introducion, null: false #紹介文
      t.string :available_area, null: false #査定可能エリア
      t.timestamps
    end
  end
end
