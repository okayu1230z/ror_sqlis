require "test_helper"

class RorControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ror_index_url
    assert_response :success
  end
end
