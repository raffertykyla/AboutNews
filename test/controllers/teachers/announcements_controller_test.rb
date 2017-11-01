require 'test_helper'

class Teachers::AnnouncementsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get teachers_announcements_index_url
    assert_response :success
  end

end
