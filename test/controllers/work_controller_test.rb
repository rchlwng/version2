require 'test_helper'

class WorkControllerTest < ActionDispatch::IntegrationTest
  test "should get fortunate" do
    get work_fortunate_url
    assert_response :success
  end

  test "should get dojo" do
    get work_dojo_url
    assert_response :success
  end

  test "should get mash" do
    get work_mash_url
    assert_response :success
  end

  test "should get fullstop" do
    get work_fullstop_url
    assert_response :success
  end

  test "should get scope" do
    get work_scope_url
    assert_response :success
  end

  test "should get lacroix" do
    get work_lacroix_url
    assert_response :success
  end

end
