require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get media" do
    get static_pages_media_url
    assert_response :success
  end

  test "should get jobs" do
    get static_pages_jobs_url
    assert_response :success
  end

end
