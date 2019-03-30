require 'test_helper'

class ShortUrlGsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @short_url_g = short_url_gs(:one)
  end

  test "should get index" do
    get short_url_gs_url
    assert_response :success
  end

  test "should get new" do
    get new_short_url_g_url
    assert_response :success
  end

  test "should create short_url_g" do
    assert_difference('ShortUrlG.count') do
      post short_url_gs_url, params: { short_url_g: { short_url: @short_url_g.short_url, url: @short_url_g.url } }
    end

    assert_redirected_to short_url_g_url(ShortUrlG.last)
  end

  test "should show short_url_g" do
    get short_url_g_url(@short_url_g)
    assert_response :success
  end

  test "should get edit" do
    get edit_short_url_g_url(@short_url_g)
    assert_response :success
  end

  test "should update short_url_g" do
    patch short_url_g_url(@short_url_g), params: { short_url_g: { short_url: @short_url_g.short_url, url: @short_url_g.url } }
    assert_redirected_to short_url_g_url(@short_url_g)
  end

  test "should destroy short_url_g" do
    assert_difference('ShortUrlG.count', -1) do
      delete short_url_g_url(@short_url_g)
    end

    assert_redirected_to short_url_gs_url
  end
end
