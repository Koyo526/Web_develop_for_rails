# frozen_string_literal: true

class CompanysController < ApplicationController
  def index
    return unless params[:ieul_office_id]

    @office = Office.find(params[:ieul_office_id])
    @ieul_id = Office.find(params[:ieul_office_id]).ieul_id
    @company_name = Company.find(@ieul_id).name
    @reviews = @office.reviews.order(release_date: :desc).limit(5)

    total_satisfaction = @reviews.sum(:contract_price_satisfaction)
    @average_satisfaction = total_satisfaction / @reviews.length.to_f

    total_contract_price_satisfaction = @reviews.sum(:contract_price_satisfaction)
    @average_contract_price_satisfaction = total_contract_price_satisfaction / @reviews.length.to_f

    total_sales_speed_satisfaction = @reviews.sum(:sales_speed_satisfaction)
    @average_sales_speed_satisfaction = total_sales_speed_satisfaction / @reviews.length.to_f
  end
end
