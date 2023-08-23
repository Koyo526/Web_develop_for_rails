require "test_helper"

class AssessmentRequestsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get assessment_requests_index_url
    assert_response :success
  end
end
