require 'test_helper'

class Ad2020ControllerTest < ActionDispatch::IntegrationTest
  test "should get muzuno_open_2020" do
    get ad2020_muzuno_open_2020_url
    assert_response :success
  end

  test "should get japan_gp_2020" do
    get ad2020_japan_gp_2020_url
    assert_response :success
  end

end
