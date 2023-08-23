class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.integer :user_id, null: false
      t.integer :ieul_id, null: false
      t.integer :ieul_office_id, null: false
      t.string :user_name, null: false
      t.integer :user_sex, null: false
      t.integer :user_age, null: false
      t.integer :property_id, null: false
      t.integer :prefecture_id, null: false
      t.references :cities, null: false, foreign_key: true
      t.string :address, null: false
      t.string :property_type, null: false
      t.date :assessment_request_date, null: false
      t.date :selling_date, null: false
      t.date :sale_date, null: false
      t.date :release_date, null: false
      t.integer :assessment_price, null: false
      t.integer :selling_price, null: false
      t.boolean :is_discounted, null: false
      t.integer :months_to_discount
      t.integer :discount_price
      t.integer :contract_price, null: false
      t.integer :intermediary_agreement_type, null: false
      t.string :headline,null: false
      t.integer :reason_for_sale, null: false
      t.text :concern_for_sale, null: false
      t.text :reason_for_choosing_office, null: false
      t.integer :support_satisfaction, null: false
      t.text :reason_for_support_satiosfaction, null: false
      t.text :advise, null: false
      t.text :improvement_point
      t.timestamps
    end
  end
end
