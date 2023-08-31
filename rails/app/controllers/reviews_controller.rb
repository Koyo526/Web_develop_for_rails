# frozen_string_literal: true

class ReviewsController < ApplicationController
  def index
    if params[:id]
      @review = Review.includes(:cities).find(params[:id])
      @company_id = @review.ieul_id
      @company_name = Company.find(@company_id).name
      @office_id = @review.ieul_office_id
      @office = Office.includes(:reviews).find(@office_id)
    else
      render '/'
    end
  end
end
