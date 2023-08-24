# frozen_string_literal: true

class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t| # 企業テーブル
      t.integer :ieul_id, null: false # イエウールID
      t.string :name, null: false # 企業名
      t.timestamps
    end
  end
end
