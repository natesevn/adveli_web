require 'test_helper'

class JobsControllerTest < ActionDispatch::IntegrationTest
  setup do
    testJob = Job.new
    testJob.about_you = "test"
    testJob.location = "test"
    testJob.requirements = "test"
    testJob.role = "test"
    testJob.save!
  end

  test "should get index" do
    get jobs_path
    assert_response :success
  end

  test "should show job" do
    get job_url(1)
    assert_response :success
  end

end
