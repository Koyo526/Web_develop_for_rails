# frozen_string_literal: true

class ChangeAssessmentRequest < ActiveRecord::Migration[7.0]
  def change
    remove_column :assessment_requests, :user_name, :string, comment: 'お名前（氏名別の入力form）'
    remove_column :assessment_requests, :user_name_kana, :string, comment: 'ふりがな（氏名別の入力form）'

    add_column :assessment_requests, :user_firstname, :string, after: :user_tel, comment: 'お名前 名（氏名別の入力form）'
    add_column :assessment_requests, :user_lastname, :string, after: :user_tel, comment: 'お名前 性（氏名別の入力form）'
    add_column :assessment_requests, :user_firstname_kana, :string, after: :user_tel, comment: 'ふりがな 名（氏名別の入力form）'
    add_column :assessment_requests, :user_lastname_kana, :string, after: :user_tel, comment: 'ふりがな 性（氏名別の入力form）'
  end
end
