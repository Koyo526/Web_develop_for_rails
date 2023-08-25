# frozen_string_literal: true

class CreateAssessmentRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :assessment_requests do |t| # 査定依頼テーブル
      t.reference :office, comment: '査定依頼を出したいイエウールの店舗id'
      t.reference :city, comment: '物件の市区ID'
      t.string :property_address, comment: '査定依頼する物件の住所'
      t.integer :property_type, comment: "物件種別 (1: '分譲マンション', 2: '一戸建て', 3: '土地')"
      t.float :property_exclusive_area, comment: '専有面積'
      t.float :property_land_area, comment: '土地面積'
      t.float :property_building_area_float, comment: '建物面積'
      t.integer :property_building_area_unit, comment: "建物面積単位 (1: '平方メートル', 2: '坪')"
      t.float :property_floor_area, comment: '延床面積'
      t.string :url_param, comment: 'urlパラメータ (今回は「beteran-sumai」を送信)'
      t.integer :property_room_plan, comment: "間取り (1: '1R(ワンルーム)', 2: '1K / 1DK', ...)"
      t.integer :property_constructed_year, comment: '築年数 (1925..2016: 暦)'
      t.string :user_email, comment: 'メールアドレス (100字以内、「@」「.」)'
      t.string :user_name, comment: 'お名前（氏名別の入力form）'
      t.string :user_name_kana, comment: 'ふりがな（氏名別の入力form）'
      t.string :user_tel, comment: '電話番号 (10～11桁、先頭数字0)'
      t.timestamps
    end
  end
end
