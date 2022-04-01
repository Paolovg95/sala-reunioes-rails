require "application_system_test_case"

class MeetingsTest < ApplicationSystemTestCase

  setup do
    @user =  users(:valid)
    @meeting = meetings(:meeting)
  end

  test "Signed In User creates new Slot" do
    # Sign In as User
    visit root_url
    sign_in @user
    # save_and_open_screenshot

    # Go to form to create new Slot
    visit new_meeting_slot_path(@meeting)
    # save_and_open_screenshot

    # Fill In form
    fill_in "Título da Reunião", with: "Title"
    fill_in "Descrição", with: "Loremp ipsum"
    choose("15") # Choose option Length

    click_on "Criar"
    # save_and_open_screenshot

    # Back in Home View
    assert_selector "h1", text: "Reserva de Sala"
    # save_and_open_screenshot
  end

  test "Signed In user views the Slot" do
    # Sign In as User
    visit root_url
    sign_in @user
    # save_and_open_screenshot

    visit meeting_path(@meeting)
  end
end
