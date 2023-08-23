class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.integer :ieul_id, null: false
      t.string :name, null: false
      t.timestamps
    end
  end
end
