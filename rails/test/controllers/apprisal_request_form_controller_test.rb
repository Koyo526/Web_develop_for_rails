# frozen_string_literal: true

require 'test_helper'
class ApprisalRequestFormControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get apprisal_request_form_index_url
    assert_response :success
  end
end
