require "test_helper"

class MocropostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mocropost = mocroposts(:one)
  end

  test "should get index" do
    get mocroposts_url
    assert_response :success
  end

  test "should get new" do
    get new_mocropost_url
    assert_response :success
  end

  test "should create mocropost" do
    assert_difference("Mocropost.count") do
      post mocroposts_url, params: { mocropost: { content: @mocropost.content, user_id: @mocropost.user_id } }
    end

    assert_redirected_to mocropost_url(Mocropost.last)
  end

  test "should show mocropost" do
    get mocropost_url(@mocropost)
    assert_response :success
  end

  test "should get edit" do
    get edit_mocropost_url(@mocropost)
    assert_response :success
  end

  test "should update mocropost" do
    patch mocropost_url(@mocropost), params: { mocropost: { content: @mocropost.content, user_id: @mocropost.user_id } }
    assert_redirected_to mocropost_url(@mocropost)
  end

  test "should destroy mocropost" do
    assert_difference("Mocropost.count", -1) do
      delete mocropost_url(@mocropost)
    end

    assert_redirected_to mocroposts_url
  end
end
