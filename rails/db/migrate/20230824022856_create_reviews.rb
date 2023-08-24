# frozen_string_literal: true

class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t| # 口コミテーブル
      t.integer :user_id, null: false # ユーザID
      t.references :office, null: false, foreign_key: true # 店舗ID
      t.integer :ieul_id, null: false # イエウールID
      t.integer :ieul_office_id, null: false # イエウール店舗ID
      t.string :user_name, null: false # 回答者の名前
      t.integer :user_sex, null: false # 性別
      t.integer :user_age, null: false # 年齢
      t.integer :prefecture_id, null: false # 都道府県ID
      t.references :city, null: false, foreign_key: true # 市区町村ID
      t.string :address, null: false # 住所
      t.string :property_type, null: false # 物件種別
      t.integer :number_of_sales, null: false # 売却回数
      t.date :sale_consideration_date, null: false # 売却検討時期
      t.date :assessment_request_date, null: false # 査定依頼時期
      t.date :selling_date, null: false # 売出時期
      t.date :sale_date, null: false # 売却時期
      t.date :release_date, null: false # 引渡時期
      t.integer :sales_speed_satisfaction, null: false # 売却スピードの満足度
      t.integer :assessment_price, null: false # 査定価格
      t.integer :selling_price, null: false # 販売価格
      t.boolean :is_discounted, null: false, default: false # 値下げしたかどうか
      t.integer :months_to_discount # 売り出してから何ヶ月後に値下げしたか
      t.integer :discount_price # 値下げ価格
      t.integer :contract_price, null: false # 成約価格
      t.integer :contract_price_satisfaction, null: false # 売却価格の満足度
      t.integer :intermediary_agreement_type, null: false # 媒介契約の形態
      t.string :headline, null: false # 見出し
      t.integer :reason_for_sale, null: false # 売却理由
      t.text :concern_for_sale, null: false # 売却時に不安だったこと
      t.text :reason_for_choosing_office, null: false # この会社に決めた理由
      t.integer :support_satisfaction, null: false # 不動産会社の対応満足度
      t.text :reason_for_support_satiosfaction, null: false # 不動産会社の対応満足度の理由
      t.text :advise, null: false # 今後売却する人へのアドバイス
      t.text :improvement_point # 不動産会社に改善してほしい点
      t.timestamps
    end
  end
end
