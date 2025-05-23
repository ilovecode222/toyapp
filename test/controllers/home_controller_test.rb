require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get inex" do
    get home_inex_url
    assert_response :success
  end

  test "should get about" do
    get home_about_url
    assert_response :success
  end

  test "should get contactus" do
    get home_contactus_url
    assert_response :success
  end

  test "should get help" do
    get home_help_url
    assert_response :success
  end
end
