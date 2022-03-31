require 'test_helper'

class SlotTest < ActiveSupport::TestCase
  test "Not Allow Creating Slots without Title" do
    slot = Slot.new
    slot.description = "123456"
    slot.length = 15
    assert_not slot.save, "Saved"
  end

  test "Not Allow Creating Slots without Description" do
    slot = Slot.new
    slot.title = "Lorem ipsum"
    slot.length = 15
    assert_not slot.save, "Saved"
  end

  test "Not Allow Creating Slots without Length" do
    slot = Slot.new
    slot.title = "Lorem"
    slot.description = "Lorem ipsum patr vitri"
    assert_not slot.save, "Saved"
  end


end
