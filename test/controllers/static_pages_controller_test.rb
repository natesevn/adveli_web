require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get media" do
    get media_path
    assert_response :success
  end
end
