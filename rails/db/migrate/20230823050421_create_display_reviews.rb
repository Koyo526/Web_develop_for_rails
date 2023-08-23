class CreateDisplayReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :display_reviews do |t|
      t.references :reviews, null: false, foreign_key: true
      t.references :offices, null: false, foreign_key: true
      t.integer :ieul_id, null: false
      t.integer :ieul_office_id, null: false
      t.timestamps
    end
  end
end
