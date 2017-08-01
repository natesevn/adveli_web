require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get media" do
    get media_path
    assert_response :success
  end

  test "should get jobs" do
    get jobs_path
    assert_response :success
  end

end
