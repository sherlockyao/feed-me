require 'test_helper'

class CashflowControllerTest < ActionController::TestCase
  test "should get credit" do
    get :credit
    assert_response :success
  end

  test "should get refund" do
    get :refund
    assert_response :success
  end

end
