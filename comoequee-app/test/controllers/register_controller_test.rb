# frozen_string_literal: true

require "test_helper"

class RegisterControllerTest < ActionDispatch::IntegrationTest
  test "should get user" do
    get register_user_url
    assert_response :success
  end
end
