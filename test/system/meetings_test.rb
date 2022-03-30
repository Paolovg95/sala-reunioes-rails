require "application_system_test_case"

class MeetingsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit root_url

    assert_selector "h1", text: "Reserva de Sala"
    assert_selector "#row-meetings", count: Meeting.count
  end
end
