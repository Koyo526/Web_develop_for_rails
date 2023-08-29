# frozen_string_literal: true

class PrefecturesController < ApplicationController
  def index
    @offices = Office.all
    # https://musical-space-rotary-phone-xpw57g5999qfppw6-3000.app.github.dev/prefectures/1/cities/1
    @city = City.find(params[:city_id])
    @cities_without_target_city = @city.prefecture.cities.select { | city | city != @city.id }
  end
end
