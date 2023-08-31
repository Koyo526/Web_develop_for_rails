# frozen_string_literal: true

class OfficesController < ApplicationController
  def index
    return unless params[:ieul_office_id]

    @office = Office.includes(:reviews).find(params[:ieul_office_id])
    @company = Company.find(@office.ieul_id)
    @reviews = @office.reviews.order(release_date: :desc).limit(5)

    @average_satisfaction = @reviews.sum(:contract_price_satisfaction) / @reviews.length.to_f
    @average_contract_price_satisfaction = @reviews.sum(:contract_price_satisfaction) / @reviews.length.to_f
    @average_sales_speed_satisfaction = @reviews.sum(:sales_speed_satisfaction) / @reviews.length.to_f

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
