require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  setup do
    testJob = Job.new
    testJob.about_you = "test"
    testJob.location = "test"
    testJob.requirements = "test"
    testJob.role = "test"
    testJob.save!
  end
  
  test "layout links" do
  	get root_path
  	assert_template 'pages/index'
    assert_select "a[href=?]", "#page-top"
  	assert_select "a[href=?]", "#about"
  	assert_select "a[href=?]", "#features"
  	assert_select "a[href=?]", "#contact"
  	assert_select "a[href=?]", "/media"
  	assert_select "a[href=?]", "/jobs"

  	get media_path
  	assert_template 'static_pages/media'
    assert_select "a[href=?]", "/"
  	assert_select "a[href=?]", "/#about"
  	assert_select "a[href=?]", "/#features"
  	assert_select "a[href=?]", "/#contact"
  	assert_select "a[href=?]", "/media"
  	assert_select "a[href=?]", "/jobs"

  	get jobs_path
  	assert_template 'jobs/index'
    assert_select "a[href=?]", "/"
  	assert_select "a[href=?]", "/#about"
  	assert_select "a[href=?]", "/#features"
  	assert_select "a[href=?]", "/#contact"
  	assert_select "a[href=?]", "/media"
  	assert_select "a[href=?]", "/jobs"

    get job_path(1)
    assert_template 'jobs/show'
    assert_select "a[href=?]", "/"
    assert_select "a[href=?]", "/#about"
    assert_select "a[href=?]", "/#features"
    assert_select "a[href=?]", "/#contact"
    assert_select "a[href=?]", "/media"
    assert_select "a[href=?]", "/jobs"
  end

end
