require "application_system_test_case"

class GearItemsTest < ApplicationSystemTestCase
  setup do
    @gear_item = gear_items(:one)
  end

  test "visiting the index" do
    visit gear_items_url
    assert_selector "h1", text: "Gear items"
  end

  test "should create gear item" do
    visit gear_items_url
    click_on "New gear item"

    fill_in "Description", with: @gear_item.description
    check "Is checked out" if @gear_item.is_checked_out
    fill_in "Name", with: @gear_item.name
    fill_in "User", with: @gear_item.user_id
    click_on "Create Gear item"

    assert_text "Gear item was successfully created"
    click_on "Back"
  end

  test "should update Gear item" do
    visit gear_item_url(@gear_item)
    click_on "Edit this gear item", match: :first

    fill_in "Description", with: @gear_item.description
    check "Is checked out" if @gear_item.is_checked_out
    fill_in "Name", with: @gear_item.name
    fill_in "User", with: @gear_item.user_id
    click_on "Update Gear item"

    assert_text "Gear item was successfully updated"
    click_on "Back"
  end

  test "should destroy Gear item" do
    visit gear_item_url(@gear_item)
    click_on "Destroy this gear item", match: :first

    assert_text "Gear item was successfully destroyed"
  end
end
