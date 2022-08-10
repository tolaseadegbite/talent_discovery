require "test_helper"

class IndicatedTalentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @indicated_talent = indicated_talents(:one)
  end

  test "should get index" do
    get indicated_talents_url
    assert_response :success
  end

  test "should get new" do
    get new_indicated_talent_url
    assert_response :success
  end

  test "should create indicated_talent" do
    assert_difference("IndicatedTalent.count") do
      post indicated_talents_url, params: { indicated_talent: { full_name: @indicated_talent.full_name, matric_no: @indicated_talent.matric_no, talent_options: @indicated_talent.talent_options, user_id: @indicated_talent.user_id } }
    end

    assert_redirected_to indicated_talent_url(IndicatedTalent.last)
  end

  test "should show indicated_talent" do
    get indicated_talent_url(@indicated_talent)
    assert_response :success
  end

  test "should get edit" do
    get edit_indicated_talent_url(@indicated_talent)
    assert_response :success
  end

  test "should update indicated_talent" do
    patch indicated_talent_url(@indicated_talent), params: { indicated_talent: { full_name: @indicated_talent.full_name, matric_no: @indicated_talent.matric_no, talent_options: @indicated_talent.talent_options, user_id: @indicated_talent.user_id } }
    assert_redirected_to indicated_talent_url(@indicated_talent)
  end

  test "should destroy indicated_talent" do
    assert_difference("IndicatedTalent.count", -1) do
      delete indicated_talent_url(@indicated_talent)
    end

    assert_redirected_to indicated_talents_url
  end
end
