require 'test_helper'


class UserFlowsTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:valid)
    @meeting = meetings(:meeting)
  end

  # Home View for signed out users
  test  "Index View" do
    sign_out :user
    get root_path
    assert_response :success

    # Check Layout
    assert_select ".navbar", visible: true
    assert_select "a", "Home" # Links to Home

    assert_select "table", visible: true # Table

    assert_select "a", "Disponivel" # Links to Form
  end

  test "Create a new Slot" do
    # Go to Form
    login_as @user
    get new_meeting_slot_path(@meeting)
    assert_response :success

    # # Fill out
    # fill_in "Título da Reunião", with: "Title"
    # fill_in "Descrição", with: "Loremp ipsum"
    # choose("15") # Choose option Length

    # click_on 'Criar'
  end

end
