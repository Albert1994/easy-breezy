require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "signup_conf" do
    mail = UserMailer.signup_conf
    assert_equal "Signup conf", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
