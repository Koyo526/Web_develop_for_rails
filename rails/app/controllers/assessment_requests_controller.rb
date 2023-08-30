# frozen_string_literal: true

class AssessmentRequestsController < ApplicationController
  def index
    @assessment_request = AssessmentRequest.new
  end

  def create
    @assessment_request = AssessmentRequest.new(assessment_params)

    if @assessment_request.save
      ieul_api_client = Assessment::Request::IeulApiClient.new
      res = ieul_api_client.post(@assessment_request.attributes)
      if res.code == "200"
        redirect_to assessment_requests_thanks
        
        flash[:danger] = 'failed to post missiong'
      end
    else
      flash.now[:danger] = 'failed validation'
    end

    render 'index', status: :unprocessable_entity
  end

  private

  def assessment_params
    params.require(:assessment_request).permit(
      :user_lastname,
      :user_firstname,
      :user_lastname_kana,
      :user_firstname_kana,
      :user_tel,
      :user_email,
      :property_constructed_year,
      :property_room_plan,
      :property_floor_area,
      :property_building_area_unit,
      :property_building_area,
      :property_land_area,
      :property_exclusive_area,
      :property_type)
  end
end
