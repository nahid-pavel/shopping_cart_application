require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end
  
  test "should login" do
    dave = users(:one)
	
	post :create ,name: dave.name, password: 'secret'
	
	assert_redirected_to admin_url
	
	assert_equal dave.id, session[:user_id]
 end

  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get destroy" do
    get :destroy
    assert_response :success
  end

end
