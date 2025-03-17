require "application_system_test_case"

class HiringProcessesTest < ApplicationSystemTestCase
  setup do
    @hiring_process = hiring_processes(:one)
  end

  test "visiting the index" do
    visit hiring_processes_url
    assert_selector "h1", text: "Hiring processes"
  end

  test "should create hiring process" do
    visit hiring_processes_url
    click_on "New hiring process"

    fill_in "Company", with: @hiring_process.company
    fill_in "Position", with: @hiring_process.position
    check "Reached me" if @hiring_process.reached_me
    fill_in "Recruiter", with: @hiring_process.recruiter
    fill_in "Status", with: @hiring_process.status
    click_on "Create Hiring process"

    assert_text "Hiring process was successfully created"
    click_on "Back"
  end

  test "should update Hiring process" do
    visit hiring_process_url(@hiring_process)
    click_on "Edit this hiring process", match: :first

    fill_in "Company", with: @hiring_process.company
    fill_in "Position", with: @hiring_process.position
    check "Reached me" if @hiring_process.reached_me
    fill_in "Recruiter", with: @hiring_process.recruiter
    fill_in "Status", with: @hiring_process.status
    click_on "Update Hiring process"

    assert_text "Hiring process was successfully updated"
    click_on "Back"
  end

  test "should destroy Hiring process" do
    visit hiring_process_url(@hiring_process)
    click_on "Destroy this hiring process", match: :first

    assert_text "Hiring process was successfully destroyed"
  end
end
