# frozen_string_literal: true

class PrefecturesController < ApplicationController
  def index
    @offices = Office.joins(:assessable_cities).where(assessable_cities: { id: params[:city_id] }) # Office.find_by(Office.company_id.assessable_areas: params[:city_id])
    Rails.logger.debug params[:city_id]
    Rails.logger.debug @offices

    # https://musical-space-rotary-phone-xpw57g5999qfppw6-3000.app.github.dev/prefectures/1/cities/1
    @city = City.find(params[:city_id])
    @cities_without_target_city = @city.prefecture.cities.reject { |city| city == @city }
  end
end
