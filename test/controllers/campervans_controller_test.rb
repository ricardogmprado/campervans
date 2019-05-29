require 'test_helper'

class CampervansControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get campervans_index_url
    assert_response :success
  end

  test "should get new" do
    get campervans_new_url
    assert_response :success
  end

  test "should get create" do
    get campervans_create_url
    assert_response :success
  end

  test "should get show" do
    get campervans_show_url
    assert_response :success
  end

  test "should get edit" do
    get campervans_edit_url
    assert_response :success
  end

  test "should get update" do
    get campervans_update_url
    assert_response :success
  end

  test "should get destroy" do
    get campervans_destroy_url
    assert_response :success
  end

end
