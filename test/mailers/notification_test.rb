require 'test_helper'

class NotificationTest < ActionMailer::TestCase
  test "project_assigned" do
    mail = Notification.project_assigned
    assert_equal "Project assigned", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
