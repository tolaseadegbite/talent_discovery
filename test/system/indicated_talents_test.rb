require "application_system_test_case"

class IndicatedTalentsTest < ApplicationSystemTestCase
  setup do
    @indicated_talent = indicated_talents(:one)
  end

  test "visiting the index" do
    visit indicated_talents_url
    assert_selector "h1", text: "Indicated talents"
  end

  test "should create indicated talent" do
    visit indicated_talents_url
    click_on "New indicated talent"

    fill_in "Full name", with: @indicated_talent.full_name
    fill_in "Matric no", with: @indicated_talent.matric_no
    fill_in "Talent options", with: @indicated_talent.talent_options
    fill_in "User", with: @indicated_talent.user_id
    click_on "Create Indicated talent"

    assert_text "Indicated talent was successfully created"
    click_on "Back"
  end

  test "should update Indicated talent" do
    visit indicated_talent_url(@indicated_talent)
    click_on "Edit this indicated talent", match: :first

    fill_in "Full name", with: @indicated_talent.full_name
    fill_in "Matric no", with: @indicated_talent.matric_no
    fill_in "Talent options", with: @indicated_talent.talent_options
    fill_in "User", with: @indicated_talent.user_id
    click_on "Update Indicated talent"

    assert_text "Indicated talent was successfully updated"
    click_on "Back"
  end

  test "should destroy Indicated talent" do
    visit indicated_talent_url(@indicated_talent)
    click_on "Destroy this indicated talent", match: :first

    assert_text "Indicated talent was successfully destroyed"
  end
end
