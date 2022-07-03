require "application_system_test_case"

class WhishListsTest < ApplicationSystemTestCase
  setup do
    @whish_list = whish_lists(:one)
  end

  test "visiting the index" do
    visit whish_lists_url
    assert_selector "h1", text: "Whish lists"
  end

  test "should create whish list" do
    visit whish_lists_url
    click_on "New whish list"

    fill_in "Title", with: @whish_list.title
    click_on "Create Whish list"

    assert_text "Whish list was successfully created"
    click_on "Back"
  end

  test "should update Whish list" do
    visit whish_list_url(@whish_list)
    click_on "Edit this whish list", match: :first

    fill_in "Title", with: @whish_list.title
    click_on "Update Whish list"

    assert_text "Whish list was successfully updated"
    click_on "Back"
  end

  test "should destroy Whish list" do
    visit whish_list_url(@whish_list)
    click_on "Destroy this whish list", match: :first

    assert_text "Whish list was successfully destroyed"
  end
end
