require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get signup_path # Every controller has it's own tests auto-generated for it
    assert_response :success
  end
end
