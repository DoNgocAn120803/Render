require "test_helper"

class DangsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dang = dangs(:one)
  end

  test "should get index" do
    get dangs_url
    assert_response :success
  end

  test "should get new" do
    get new_dang_url
    assert_response :success
  end

  test "should create dang" do
    assert_difference("Dang.count") do
      post dangs_url, params: { dang: { body: @dang.body, title: @dang.title } }
    end

    assert_redirected_to dang_url(Dang.last)
  end

  test "should show dang" do
    get dang_url(@dang)
    assert_response :success
  end

  test "should get edit" do
    get edit_dang_url(@dang)
    assert_response :success
  end

  test "should update dang" do
    patch dang_url(@dang), params: { dang: { body: @dang.body, title: @dang.title } }
    assert_redirected_to dang_url(@dang)
  end

  test "should destroy dang" do
    assert_difference("Dang.count", -1) do
      delete dang_url(@dang)
    end

    assert_redirected_to dangs_url
  end
end
