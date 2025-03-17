require "test_helper"

class HiringProcessesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hiring_process = hiring_processes(:one)
  end

  test "should get index" do
    get hiring_processes_url
    assert_response :success
  end

  test "should get new" do
    get new_hiring_process_url
    assert_response :success
  end

  test "should create hiring_process" do
    assert_difference("HiringProcess.count") do
      post hiring_processes_url, params: { hiring_process: { company: @hiring_process.company, position: @hiring_process.position, reached_me: @hiring_process.reached_me, recruiter: @hiring_process.recruiter, status: @hiring_process.status } }
    end

    assert_redirected_to hiring_process_url(HiringProcess.last)
  end

  test "should show hiring_process" do
    get hiring_process_url(@hiring_process)
    assert_response :success
  end

  test "should get edit" do
    get edit_hiring_process_url(@hiring_process)
    assert_response :success
  end

  test "should update hiring_process" do
    patch hiring_process_url(@hiring_process), params: { hiring_process: { company: @hiring_process.company, position: @hiring_process.position, reached_me: @hiring_process.reached_me, recruiter: @hiring_process.recruiter, status: @hiring_process.status } }
    assert_redirected_to hiring_process_url(@hiring_process)
  end

  test "should destroy hiring_process" do
    assert_difference("HiringProcess.count", -1) do
      delete hiring_process_url(@hiring_process)
    end

    assert_redirected_to hiring_processes_url
  end
end
