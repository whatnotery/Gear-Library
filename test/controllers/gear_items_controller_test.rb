require "test_helper"

class GearItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gear_item = gear_items(:one)
  end

  test "should get index" do
    get gear_items_url
    assert_response :success
  end

  test "should get new" do
    get new_gear_item_url
    assert_response :success
  end

  test "should create gear_item" do
    assert_difference("GearItem.count") do
      post gear_items_url, params: { gear_item: { description: @gear_item.description, is_checked_out: @gear_item.is_checked_out, name: @gear_item.name, user_id: @gear_item.user_id } }
    end

    assert_redirected_to gear_item_url(GearItem.last)
  end

  test "should show gear_item" do
    get gear_item_url(@gear_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_gear_item_url(@gear_item)
    assert_response :success
  end

  test "should update gear_item" do
    patch gear_item_url(@gear_item), params: { gear_item: { description: @gear_item.description, is_checked_out: @gear_item.is_checked_out, name: @gear_item.name, user_id: @gear_item.user_id } }
    assert_redirected_to gear_item_url(@gear_item)
  end

  test "should destroy gear_item" do
    assert_difference("GearItem.count", -1) do
      delete gear_item_url(@gear_item)
    end

    assert_redirected_to gear_items_url
  end
end
