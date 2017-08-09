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

  test "check if partials have rendered" do
    get root_path
    assert_template :partial => '_header'
    assert_template :partial => '_footer'
    assert_template :partial => '_nav'
    assert_template :partial => '_about'
    assert_template :partial => '_features'
    assert_template :partial => '_contact'

    get media_path
    assert_template :partial => '_header'
    assert_template :partial => '_footer'
    assert_template :partial => '_nav'

    get jobs_path
    assert_template :partial => '_header'
    assert_template :partial => '_footer'
    assert_template :partial => '_nav'

    get job_path(1)
    assert_template :partial => '_header'
    assert_template :partial => '_footer'
    assert_template :partial => '_nav'
  end

end
