require 'test_helper'

class MoviesControllerTest < ActionDispatch::IntegrationTest
  test "should get 2020" do
    get movies_2020_url
    assert_response :success
  end

  test "should get 2019" do
    get movies_2019_url
    assert_response :success
  end

  test "should get 2018" do
    get movies_2018_url
    assert_response :success
  end

end
