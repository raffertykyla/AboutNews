require 'test_helper'

class Cms::ChapterMeetingMinutesControllerTest < ActionController::TestCase
  setup do
    @cms_chapter_meeting_minute = cms_chapter_meeting_minutes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cms_chapter_meeting_minutes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cms_chapter_meeting_minute" do
    assert_difference('Cms::ChapterMeetingMinute.count') do
      post :create, cms_chapter_meeting_minute: { chapter_id: @cms_chapter_meeting_minute.chapter_id, document: @cms_chapter_meeting_minute.document, meeting_date: @cms_chapter_meeting_minute.meeting_date, title: @cms_chapter_meeting_minute.title }
    end

    assert_redirected_to cms_chapter_meeting_minute_path(assigns(:cms_chapter_meeting_minute))
  end

  test "should show cms_chapter_meeting_minute" do
    get :show, id: @cms_chapter_meeting_minute
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cms_chapter_meeting_minute
    assert_response :success
  end

  test "should update cms_chapter_meeting_minute" do
    patch :update, id: @cms_chapter_meeting_minute, cms_chapter_meeting_minute: { chapter_id: @cms_chapter_meeting_minute.chapter_id, document: @cms_chapter_meeting_minute.document, meeting_date: @cms_chapter_meeting_minute.meeting_date, title: @cms_chapter_meeting_minute.title }
    assert_redirected_to cms_chapter_meeting_minute_path(assigns(:cms_chapter_meeting_minute))
  end

  test "should destroy cms_chapter_meeting_minute" do
    assert_difference('Cms::ChapterMeetingMinute.count', -1) do
      delete :destroy, id: @cms_chapter_meeting_minute
    end

    assert_redirected_to cms_chapter_meeting_minutes_path
  end
end
