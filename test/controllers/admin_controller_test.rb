require 'test_helper'

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get event_c" do
    get admin_event_c_url
    assert_response :success
  end

  test "should get event_r" do
    get admin_event_r_url
    assert_response :success
  end

  test "should get event_u" do
    get admin_event_u_url
    assert_response :success
  end

  test "should get event_d" do
    get admin_event_d_url
    assert_response :success
  end

  test "should get user_c" do
    get admin_user_c_url
    assert_response :success
  end

  test "should get user_r" do
    get admin_user_r_url
    assert_response :success
  end

  test "should get user_u" do
    get admin_user_u_url
    assert_response :success
  end

  test "should get user_d" do
    get admin_user_d_url
    assert_response :success
  end

end
