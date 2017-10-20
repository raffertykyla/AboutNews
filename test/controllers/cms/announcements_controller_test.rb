require 'test_helper'

class Cms::AnnouncementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cms_announcement = cms_announcements(:one)
  end

  test "should get index" do
    get cms_announcements_url
    assert_response :success
  end

  test "should get new" do
    get new_cms_announcement_url
    assert_response :success
  end

  test "should create cms_announcement" do
    assert_difference('Cms::Announcement.count') do
      post cms_announcements_url, params: { cms_announcement: { description: @cms_announcement.description, target_audience: @cms_announcement.target_audience, title: @cms_announcement.title } }
    end

    assert_redirected_to cms_announcement_url(Cms::Announcement.last)
  end

  test "should show cms_announcement" do
    get cms_announcement_url(@cms_announcement)
    assert_response :success
  end

  test "should get edit" do
    get edit_cms_announcement_url(@cms_announcement)
    assert_response :success
  end

  test "should update cms_announcement" do
    patch cms_announcement_url(@cms_announcement), params: { cms_announcement: { description: @cms_announcement.description, target_audience: @cms_announcement.target_audience, title: @cms_announcement.title } }
    assert_redirected_to cms_announcement_url(@cms_announcement)
  end

  test "should destroy cms_announcement" do
    assert_difference('Cms::Announcement.count', -1) do
      delete cms_announcement_url(@cms_announcement)
    end

    assert_redirected_to cms_announcements_url
  end
end
