# frozen_string_literal: true

class ReviewsController < ApplicationController
  def index
    return unless params[:id]

    @review = Review.find(params[:id])
    @company_id = Review.find(params[:id]).ieul_id
    @company_name = Company.find(@company_id).name
    @office_id = Review.find(params[:id]).ieul_office_id
    @office = Office.find(@office_id)
  end
end
