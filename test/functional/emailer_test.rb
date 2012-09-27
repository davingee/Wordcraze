require 'test_helper'

class EmailerTest < ActionMailer::TestCase
  test "contact" do
    mail = Emailer.contact
    assert_equal "Contact", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "feedback" do
    mail = Emailer.feedback
    assert_equal "Feedback", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
