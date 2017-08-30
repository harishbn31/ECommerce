require 'test_helper'

class DashboardControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get categories" do
    get :categories
    assert_response :success
  end

  test "should get products" do
    get :products
    assert_response :success
  end

  test "should get users" do
    get :users
    assert_response :success
  end

  test "should get reviews" do
    get :reviews
    assert_response :success
  end

  test "should get orders" do
    get :orders
    assert_response :success
  end

end
