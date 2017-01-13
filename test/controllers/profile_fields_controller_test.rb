require 'test_helper'

class ProfileFieldsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profile_field = profile_fields(:one)
  end

  test "should get index" do
    get profile_fields_url
    assert_response :success
  end

  test "should get new" do
    get new_profile_field_url
    assert_response :success
  end

  test "should create profile_field" do
    assert_difference('ProfileField.count') do
      post profile_fields_url, params: { profile_field: { datatype: @profile_field.datatype, name: @profile_field.name } }
    end

    assert_redirected_to profile_field_url(ProfileField.last)
  end

  test "should show profile_field" do
    get profile_field_url(@profile_field)
    assert_response :success
  end

  test "should get edit" do
    get edit_profile_field_url(@profile_field)
    assert_response :success
  end

  test "should update profile_field" do
    patch profile_field_url(@profile_field), params: { profile_field: { datatype: @profile_field.datatype, name: @profile_field.name } }
    assert_redirected_to profile_field_url(@profile_field)
  end

  test "should destroy profile_field" do
    assert_difference('ProfileField.count', -1) do
      delete profile_field_url(@profile_field)
    end

    assert_redirected_to profile_fields_url
  end
end
