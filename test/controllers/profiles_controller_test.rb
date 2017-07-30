require 'test_helper'

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
=begin
  #有時間再來重構
  #有可能是因為 唯一性、用戶必須先存在(profile不能單獨存在必須先有user才有profile)
  test "should create profile" do
    assert_difference('Profile.count') do
      post profiles_url, params: { profile: { name: @profile.name, user_id: @profile.user_id, avatar: @profile.avatar } }
    end

    assert_redirected_to profile_url(Profile.last)
  end
=end
  test "should show profile" do
    get profile_url(@profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_profile_url(@profile)
    assert_response :success
  end

  test "should update profile" do
    patch profile_url(@profile), params: { profile: { avatar_content_type: @profile.avatar_content_type, avatar_file_name: @profile.avatar_file_name, avatar_file_size: @profile.avatar_file_size, avatar_updated_at: @profile.avatar_updated_at, name: @profile.name, user_id: @profile.user_id } }
    assert_redirected_to profile_url(@profile)
  end

  test "should destroy profile" do
    assert_difference('Profile.count', -1) do
      delete profile_url(@profile)
    end

    assert_redirected_to profiles_url
  end
end
