class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.integer :company_id, null: false
      t.integer :ieul_id
      t.string :name
      t.timestamps
    end
  end
end
