require "test_helper"

class ApplicantsControllerTest < ActionDispatch::IntegrationTest
  test "should get applicants" do
    get applicants_applicants_url
    assert_response :success
  end
end
