# frozen_string_literal: true

class CitiesController < ApplicationController
  def index
    @offices = Office.includes(:reviews).includes(:assessable_cities).where(assessable_cities: { id: params[:city_id] })
                     .all.page(params[:page]).per(5)
    Rails.logger.debug params[:city_id]
    Rails.logger.debug @offices
    @city = City.find(params[:city_id])
    @cities_without_target_city = @city.prefecture.cities.reject { |city| city == @city }
  end
end
