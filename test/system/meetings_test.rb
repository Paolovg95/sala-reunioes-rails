require "application_system_test_case"


class MeetingsTest < ApplicationSystemTestCase
  test "lets a signed in user create a new slot" do
    visit root_path
    assert_response :success
    save_and_open_screenshot
  end
end
