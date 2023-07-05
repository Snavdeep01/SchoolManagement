require "test_helper"

class PrincipalsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get principals_index_url
    assert_response :success
  end

  test "should get show" do
    get principals_show_url
    assert_response :success
  end

  test "should get new" do
    get principals_new_url
    assert_response :success
  end

  test "should get distroy" do
    get principals_distroy_url
    assert_response :success
  end
end
