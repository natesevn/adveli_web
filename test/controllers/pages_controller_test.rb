require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get root_path
    assert_response :success
  end

  test "check section ids exist" do
  	get root_path
  	assert_response :success

  	assert_select "section#about"
  	assert_select "section#features"
  	assert_select "section#contact"
  end

end
