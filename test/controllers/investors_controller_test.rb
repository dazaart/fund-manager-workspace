require "test_helper"

class InvestorsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_investor_url
    assert_response :success
  end
end
