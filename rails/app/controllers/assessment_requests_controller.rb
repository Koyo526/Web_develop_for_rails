# frozen_string_literal: true

class AssessmentRequestsController < ApplicationController
  def index
    @assessment_request = AssessmentRequest.new
  end

  def create
    @assessment_request = AssessmentRequest.new(assessment_params)

    redirect_to assessment_requests_thanks if @assessment_request.save

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
      :property_building_area,
      :property_land_area,
      :property_exclusive_area,
      :property_type
    )
  end
end
