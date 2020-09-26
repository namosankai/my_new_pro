require 'test_helper'

class ReportControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get report_top_url
    assert_response :success
  end

end
