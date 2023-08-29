# frozen_string_literal: true

class CreateAssessableAreas < ActiveRecord::Migration[7.0]
  def change
    create_table :assessable_areas do |t| # 査定可能エリア中間テーブル
      t.references :office, null: false, foreign_key: true, comment: '企業ID'
      t.references :city, null: false, foreign_key: true, comment: '市区町村ID'
      t.timestamps
    end
    add_index :assessable_areas,[:city_id,:office_id],unique: true
  end
end
