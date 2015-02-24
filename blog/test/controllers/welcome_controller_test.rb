require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get me" do
    get :me
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

end
