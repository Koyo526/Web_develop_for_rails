# frozen_string_literal: true

class CompanysController < ApplicationController
  def index
    return unless params[:ieul_office_id]

    @office = Office.find(params[:ieul_office_id])
    @ieul_id = Office.find(params[:ieul_office_id]).ieul_id
    @company = Company.find(@ieul_id)
    @company_name = @company.name
    @reviews = @office.reviews.order(release_date: :desc).limit(5)

    total_satisfaction = @reviews.sum(:contract_price_satisfaction)
    @average_satisfaction = total_satisfaction / @reviews.length.to_f

    total_contract_price_satisfaction = @reviews.sum(:contract_price_satisfaction)
    @average_contract_price_satisfaction = total_contract_price_satisfaction / @reviews.length.to_f

    total_sales_speed_satisfaction = @reviews.sum(:sales_speed_satisfaction)
    @average_sales_speed_satisfaction = total_sales_speed_satisfaction / @reviews.length.to_f

    @chart_data = {
      labels: %w[対応満足度 売却スピード 売却価格],
      datasets: [{
        label: @company.name,
        data: [@average_satisfaction, @average_contract_price_satisfaction, @average_sales_speed_satisfaction],
        backgroundColor: 'rgba(67, 133, 215, 0.5)', # グラフ背景色
        borderColor: 'rgba(67, 133, 215, 1)' # グラフボーダー色
      }]
    }
  end
end
