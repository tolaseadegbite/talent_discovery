require "test_helper"

class DesiredTalentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @desired_talent = desired_talents(:one)
  end

  test "should get index" do
    get desired_talents_url
    assert_response :success
  end

  test "should get new" do
    get new_desired_talent_url
    assert_response :success
  end

  test "should create desired_talent" do
    assert_difference("DesiredTalent.count") do
      post desired_talents_url, params: { desired_talent: { talent_options: @desired_talent.talent_options, user_id: @desired_talent.user_id } }
    end

    assert_redirected_to desired_talent_url(DesiredTalent.last)
  end

  test "should show desired_talent" do
    get desired_talent_url(@desired_talent)
    assert_response :success
  end

  test "should get edit" do
    get edit_desired_talent_url(@desired_talent)
    assert_response :success
  end

  test "should update desired_talent" do
    patch desired_talent_url(@desired_talent), params: { desired_talent: { talent_options: @desired_talent.talent_options, user_id: @desired_talent.user_id } }
    assert_redirected_to desired_talent_url(@desired_talent)
  end

  test "should destroy desired_talent" do
    assert_difference("DesiredTalent.count", -1) do
      delete desired_talent_url(@desired_talent)
    end

    assert_redirected_to desired_talents_url
  end
end
