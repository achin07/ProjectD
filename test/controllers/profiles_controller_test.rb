require "test_helper"

class ProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profile = profiles(:one)
  end

  test "should get index" do
    get profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_profile_url
    assert_response :success
  end

  test "should create profile" do
    assert_difference("Profile.count") do
      post profiles_url, params: { profile: { com_position: @profile.com_position, company_name: @profile.company_name, degree: @profile.degree, description: @profile.description, exp: @profile.exp, from_date: @profile.from_date, from_date_school: @profile.from_date_school, highlights: @profile.highlights, job_title: @profile.job_title, name: @profile.name, overview: @profile.overview, prim_skill: @profile.prim_skill, project_desc: @profile.project_desc, project_name: @profile.project_name, project_url: @profile.project_url, school_string: @profile.school_string, sec_skill: @profile.sec_skill, tech_stack: @profile.tech_stack, to_date: @profile.to_date, to_date_school: @profile.to_date_school } }
    end

    assert_redirected_to profile_url(Profile.last)
  end

  test "should show profile" do
    get profile_url(@profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_profile_url(@profile)
    assert_response :success
  end

  test "should update profile" do
    patch profile_url(@profile), params: { profile: { com_position: @profile.com_position, company_name: @profile.company_name, degree: @profile.degree, description: @profile.description, exp: @profile.exp, from_date: @profile.from_date, from_date_school: @profile.from_date_school, highlights: @profile.highlights, job_title: @profile.job_title, name: @profile.name, overview: @profile.overview, prim_skill: @profile.prim_skill, project_desc: @profile.project_desc, project_name: @profile.project_name, project_url: @profile.project_url, school_string: @profile.school_string, sec_skill: @profile.sec_skill, tech_stack: @profile.tech_stack, to_date: @profile.to_date, to_date_school: @profile.to_date_school } }
    assert_redirected_to profile_url(@profile)
  end

  test "should destroy profile" do
    assert_difference("Profile.count", -1) do
      delete profile_url(@profile)
    end

    assert_redirected_to profiles_url
  end
end
