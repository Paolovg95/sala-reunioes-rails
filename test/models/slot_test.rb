require 'test_helper'

class SlotTest < ActiveSupport::TestCase

  test "Not Allow Creating Slots without Title" do
    slot = Slot.new
    # slot.title = "Title"
    slot.description = "Lorem ipsum patr vitri"
    slot.length = 15
    assert_not slot.save, "Saved"
  end

  test "Not Allow Creating Slots without Description" do
    slot = Slot.new
    slot.title = "Lorem ipsum"
    # slot.description = "Lorem ipsum patr vitri"
    slot.length = 15
    assert_not slot.save, "Saved"
  end

  test "Not Allow Creating Slots without Length" do
    slot = Slot.new
    slot.title = "Lorem"
    slot.description = "Lorem ipsum patr vitri"
    # slot.length = 15
    assert_not slot.save, "Saved"
  end


end
