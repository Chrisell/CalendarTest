require 'test_helper'

class MenuControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get drafts" do
    get :drafts
    assert_response :success
  end

  test "should get cans" do
    get :cans
    assert_response :success
  end

  test "should get cocktails" do
    get :cocktails
    assert_response :success
  end

  test "should get food" do
    get :food
    assert_response :success
  end

end
