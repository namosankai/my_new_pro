require 'test_helper'

class ExpencesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get expences_index_url
    assert_response :success
  end

end
