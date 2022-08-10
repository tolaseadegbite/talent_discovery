require "application_system_test_case"

class DesiredTalentsTest < ApplicationSystemTestCase
  setup do
    @desired_talent = desired_talents(:one)
  end

  test "visiting the index" do
    visit desired_talents_url
    assert_selector "h1", text: "Desired talents"
  end

  test "should create desired talent" do
    visit desired_talents_url
    click_on "New desired talent"

    fill_in "Talent options", with: @desired_talent.talent_options
    fill_in "User", with: @desired_talent.user_id
    click_on "Create Desired talent"

    assert_text "Desired talent was successfully created"
    click_on "Back"
  end

  test "should update Desired talent" do
    visit desired_talent_url(@desired_talent)
    click_on "Edit this desired talent", match: :first

    fill_in "Talent options", with: @desired_talent.talent_options
    fill_in "User", with: @desired_talent.user_id
    click_on "Update Desired talent"

    assert_text "Desired talent was successfully updated"
    click_on "Back"
  end

  test "should destroy Desired talent" do
    visit desired_talent_url(@desired_talent)
    click_on "Destroy this desired talent", match: :first

    assert_text "Desired talent was successfully destroyed"
  end
end
