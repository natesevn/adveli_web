require 'test_helper'

class JobsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job = Job.all
    post jobs_url, params: { job: { about_you: "test", 
                                      location: "test", 
                                      requirements: "test", 
                                      role: "test" }}
  end

  test "should get index" do
    get jobs_path
    assert_response :success
  end

  test "should get new" do
    get new_job_url
    assert_response :success
  end

  test "should create job" do
    assert_difference('Job.count') do
      post jobs_url, params: { job: { about_you: "test", 
                                      location: "test", 
                                      requirements: "test", 
                                      role: "test" }}
    end

    assert_redirected_to job_url(Job.last)
  end

  test "should show job" do
    get job_url(1)
    assert_response :success
  end

  test "should get edit" do
    get edit_job_url(1)
    assert_response :success
  end

  test "should update job" do
    patch job_url(1), params: { job: { about_you: "test2", 
                                          location: "test2", 
                                          requirements: "test2", 
                                          role: "test2" } }
    assert_redirected_to job_url(1)
  end

  test "should destroy job" do
    assert_difference('Job.count', -1) do
      delete job_url(1)
    end

    assert_redirected_to jobs_url
  end
end
