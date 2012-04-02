require 'test_helper'

class SupAccountControllerTest < ActionController::TestCase
  test "should get grn_pay" do
    get :grn_pay
    assert_response :success
  end

  test "should get grn_pending" do
    get :grn_pending
    assert_response :success
  end

end
