require "test_helper"

class CandlesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get candles_index_url
    assert_response :success
  end

  test "should get show" do
    get candles_show_url
    assert_response :success
  end
end
