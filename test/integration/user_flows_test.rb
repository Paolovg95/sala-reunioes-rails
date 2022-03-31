require 'test_helper'

class UserFlowsTest < ActionDispatch::IntegrationTest


  test "Can get Index" do
    get root_path
    assert_response 200
  end

end
