require 'test_helper'

class WhiskeysControllerTest < ActionController::TestCase
  setup do
    @whiskey = whiskeys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:whiskeys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create whiskey" do
    assert_difference('Whiskey.count') do
      post :create, whiskey: @whiskey.attributes
    end

    assert_redirected_to whiskey_path(assigns(:whiskey))
  end

  test "should show whiskey" do
    get :show, id: @whiskey.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @whiskey.to_param
    assert_response :success
  end

  test "should update whiskey" do
    put :update, id: @whiskey.to_param, whiskey: @whiskey.attributes
    assert_redirected_to whiskey_path(assigns(:whiskey))
  end

  test "should destroy whiskey" do
    assert_difference('Whiskey.count', -1) do
      delete :destroy, id: @whiskey.to_param
    end

    assert_redirected_to whiskeys_path
  end
end
