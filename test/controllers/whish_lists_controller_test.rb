require "test_helper"

class WhishListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @whish_list = whish_lists(:one)
  end

  test "should get index" do
    get whish_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_whish_list_url
    assert_response :success
  end

  test "should create whish_list" do
    assert_difference("WhishList.count") do
      post whish_lists_url, params: { whish_list: { title: @whish_list.title } }
    end

    assert_redirected_to whish_list_url(WhishList.last)
  end

  test "should show whish_list" do
    get whish_list_url(@whish_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_whish_list_url(@whish_list)
    assert_response :success
  end

  test "should update whish_list" do
    patch whish_list_url(@whish_list), params: { whish_list: { title: @whish_list.title } }
    assert_redirected_to whish_list_url(@whish_list)
  end

  test "should destroy whish_list" do
    assert_difference("WhishList.count", -1) do
      delete whish_list_url(@whish_list)
    end

    assert_redirected_to whish_lists_url
  end
end
