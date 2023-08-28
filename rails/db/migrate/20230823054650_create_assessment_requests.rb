# frozen_string_literal: true

class CreateAssessmentRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :assessment_requests do |t| # 査定依頼テーブル
      t.references :office # 査定依頼を出したいイエウールの店舗id（branch_id）
      t.references :city # 物件の市区ID
      t.string :property_address # 査定依頼する物件の住所
      t.integer :property_type # 物件種別 (1: '分譲マンション', 2: '一戸建て', 3: '土地')
      t.float :property_exclusive_area # 専有面積
      t.float :property_land_area # 土地面積
      t.float :property_building_area_float # 建物面積
      t.integer :property_building_area_unit # 建物面積単位 (1: '平方メートル', 2: '坪')
      t.float :property_floor_area # 延床面積
      t.string :url_param # urlパラメータ (今回は「beteran-sumai」を送信)
      t.integer :property_room_plan # 間取り (1: '1R(ワンルーム)', 2: '1K / 1DK', ...)
      t.integer :property_constructed_year # 築年数 (1925..2016: 暦)
      t.string :user_email # メールアドレス (100字以内、「@」「.」)
      t.string :user_name # お名前（氏名別の入力form）
      t.string :user_name_kana # ふりがな（氏名別の入力form）
      t.string :user_tel # 電話番号 (10～11桁、先頭数字0)
      t.timestamps
    end
  end
end
