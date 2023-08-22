class CreateUserExperiences < ActiveRecord::Migration[7.0]
  def change
    create_table :user_experiences do |t|
      t.integer :company_id
      t.referance :store_id
      t.integer :experience_id
      t.timestamps
    end
  end
end
