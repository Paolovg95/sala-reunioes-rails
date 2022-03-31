require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "Not Allow save User without First_Name" do
    user = User.new
    user.email = "whatever@mail.com"
    user.password = "123456"
    assert_not user.save, "Saved"
  end

  test "Not Allow Register User First Name or Email Duplicates " do
    user1 = User.create(first_name: "barryobama", email: "what@mail.com", password: "123456")
    user2 = User.new(first_name: "barryobama", email: "what@mail.com", password: "123456")
    user1.save
    assert_not user2.save, "Saved a duplicate user name"
  end

end
