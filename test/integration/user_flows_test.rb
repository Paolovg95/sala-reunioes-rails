require 'test_helper'

class UserFlowsTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    sign_out :user
  end

  test "Can get Index" do
    get root_path
    assert_response :success
  end

  # Redirect not
  test "Can create a meeting" do
    sign_in :user
    get new_meeting_slot_path(:meeting)
    assert_response :redirect
  end


end
