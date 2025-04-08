require "application_system_test_case"

class MocropostsTest < ApplicationSystemTestCase
  setup do
    @mocropost = mocroposts(:one)
  end

  test "visiting the index" do
    visit mocroposts_url
    assert_selector "h1", text: "Mocroposts"
  end

  test "should create mocropost" do
    visit mocroposts_url
    click_on "New mocropost"

    fill_in "Content", with: @mocropost.content
    fill_in "User", with: @mocropost.user_id
    click_on "Create Mocropost"

    assert_text "Mocropost was successfully created"
    click_on "Back"
  end

  test "should update Mocropost" do
    visit mocropost_url(@mocropost)
    click_on "Edit this mocropost", match: :first

    fill_in "Content", with: @mocropost.content
    fill_in "User", with: @mocropost.user_id
    click_on "Update Mocropost"

    assert_text "Mocropost was successfully updated"
    click_on "Back"
  end

  test "should destroy Mocropost" do
    visit mocropost_url(@mocropost)
    click_on "Destroy this mocropost", match: :first

    assert_text "Mocropost was successfully destroyed"
  end
end
