require 'test_helper'

class RalliesControllerTest < ActionDispatch::IntegrationTest
  test "should get rallies" do
    get rallies_rallies_url
    assert_response :success
  end

end
