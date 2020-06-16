require 'test_helper'

class FavoritesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get favorites_show_url
    assert_response :success
  end

  test "should get edit" do
    get favorites_edit_url
    assert_response :success
  end

  test "should get update" do
    get favorites_update_url
    assert_response :success
  end

  test "should get new" do
    get favorites_new_url
    assert_response :success
  end

end
