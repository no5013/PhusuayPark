require 'test_helper'

class PageControllerControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get rooms" do
    get :rooms
    assert_response :success
  end

  test "should get services" do
    get :services
    assert_response :success
  end

  test "should get activities" do
    get :activities
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get contact_us" do
    get :contact_us
    assert_response :success
  end

end
