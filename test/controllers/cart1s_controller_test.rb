require 'test_helper'

class Cart1sControllerTest < ActionController::TestCase
  setup do
    @cart1 = cart1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cart1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cart1" do
    assert_difference('Cart1.count') do
      post :create, cart1: {  }
    end

    assert_redirected_to cart1_path(assigns(:cart1))
  end

  test "should show cart1" do
    get :show, id: @cart1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cart1
    assert_response :success
  end

  test "should update cart1" do
    patch :update, id: @cart1, cart1: {  }
    assert_redirected_to cart1_path(assigns(:cart1))
  end

  test "should destroy cart1" do
    assert_difference('Cart1.count', -1) do
	  session[:cart1_id] = @cart1.id
      delete :destroy, id: @cart1
    end

    assert_redirected_to cart1s_path
  end
end
