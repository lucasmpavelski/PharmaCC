require 'test_helper'

class ReportControllerTest < ActionController::TestCase
  test "should get user" do
    get :user
    assert_response :success
  end

  test "should get product" do
    get :product
    assert_response :success
  end

  test "should get sell" do
    get :sell
    assert_response :success
  end

end
