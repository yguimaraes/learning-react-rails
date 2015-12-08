require 'test_helper'

class ReduxesControllerTest < ActionController::TestCase
  setup do
    @redux = reduxes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reduxes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create redux" do
    assert_difference('Redux.count') do
      post :create, redux: {  }
    end

    assert_redirected_to redux_path(assigns(:redux))
  end

  test "should show redux" do
    get :show, id: @redux
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @redux
    assert_response :success
  end

  test "should update redux" do
    patch :update, id: @redux, redux: {  }
    assert_redirected_to redux_path(assigns(:redux))
  end

  test "should destroy redux" do
    assert_difference('Redux.count', -1) do
      delete :destroy, id: @redux
    end

    assert_redirected_to reduxes_path
  end
end
