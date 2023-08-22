class CreateCompanyTables < ActiveRecord::Migration[7.0]
  def change
    create_table :company_tables, id: false do |t|
      t.integer :company_id, null: false, primary_key: true
      t.string :company_name
      t.string :logo_url
      t.integer :fax_number
      t.string :business_hours
      t.string :regular_holiday
      t.string :catch_copy
      t.string :introduction
      t.string :available_area
      t.timestamps
    end
  end
end
