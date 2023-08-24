# frozen_string_literal: true

class CreatePrefectures < ActiveRecord::Migration[7.0]
  def change
    create_table :prefectures do |t|
      t.string :name, null: false # 都道府県名
      t.timestamps
    end
  end
end
