require "application_system_test_case"

class ProfilesTest < ApplicationSystemTestCase
  setup do
    @profile = profiles(:one)
  end

  test "visiting the index" do
    visit profiles_url
    assert_selector "h1", text: "Profiles"
  end

  test "should create profile" do
    visit profiles_url
    click_on "New profile"

    fill_in "Com position", with: @profile.com_position
    fill_in "Company name", with: @profile.company_name
    fill_in "Degree", with: @profile.degree
    fill_in "Description", with: @profile.description
    fill_in "Exp", with: @profile.exp
    fill_in "From date", with: @profile.from_date
    fill_in "From date school", with: @profile.from_date_school
    fill_in "Highlights", with: @profile.highlights
    fill_in "Job title", with: @profile.job_title
    fill_in "Name", with: @profile.name
    fill_in "Overview", with: @profile.overview
    fill_in "Prim skill", with: @profile.prim_skill
    fill_in "Project desc", with: @profile.project_desc
    fill_in "Project name", with: @profile.project_name
    fill_in "Project url", with: @profile.project_url
    fill_in "School string", with: @profile.school_string
    fill_in "Sec skill", with: @profile.sec_skill
    fill_in "Tech stack", with: @profile.tech_stack
    fill_in "To date", with: @profile.to_date
    fill_in "To date school", with: @profile.to_date_school
    click_on "Create Profile"

    assert_text "Profile was successfully created"
    click_on "Back"
  end

  test "should update Profile" do
    visit profile_url(@profile)
    click_on "Edit this profile", match: :first

    fill_in "Com position", with: @profile.com_position
    fill_in "Company name", with: @profile.company_name
    fill_in "Degree", with: @profile.degree
    fill_in "Description", with: @profile.description
    fill_in "Exp", with: @profile.exp
    fill_in "From date", with: @profile.from_date
    fill_in "From date school", with: @profile.from_date_school
    fill_in "Highlights", with: @profile.highlights
    fill_in "Job title", with: @profile.job_title
    fill_in "Name", with: @profile.name
    fill_in "Overview", with: @profile.overview
    fill_in "Prim skill", with: @profile.prim_skill
    fill_in "Project desc", with: @profile.project_desc
    fill_in "Project name", with: @profile.project_name
    fill_in "Project url", with: @profile.project_url
    fill_in "School string", with: @profile.school_string
    fill_in "Sec skill", with: @profile.sec_skill
    fill_in "Tech stack", with: @profile.tech_stack
    fill_in "To date", with: @profile.to_date
    fill_in "To date school", with: @profile.to_date_school
    click_on "Update Profile"

    assert_text "Profile was successfully updated"
    click_on "Back"
  end

  test "should destroy Profile" do
    visit profile_url(@profile)
    click_on "Destroy this profile", match: :first

    assert_text "Profile was successfully destroyed"
  end
end
