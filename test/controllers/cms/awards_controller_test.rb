require 'test_helper'

class Cms::AwardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cms_award = cms_awards(:one)
  end

  test "should get index" do
    get cms_awards_url
    assert_response :success
  end

  test "should get new" do
    get new_cms_award_url
    assert_response :success
  end

  test "should create cms_award" do
    assert_difference('Cms::Award.count') do
      post cms_awards_url, params: { cms_award: { description: @cms_award.description, title: @cms_award.title } }
    end

    assert_redirected_to cms_award_url(Cms::Award.last)
  end

  test "should show cms_award" do
    get cms_award_url(@cms_award)
    assert_response :success
  end

  test "should get edit" do
    get edit_cms_award_url(@cms_award)
    assert_response :success
  end

  test "should update cms_award" do
    patch cms_award_url(@cms_award), params: { cms_award: { description: @cms_award.description, title: @cms_award.title } }
    assert_redirected_to cms_award_url(@cms_award)
  end

  test "should destroy cms_award" do
    assert_difference('Cms::Award.count', -1) do
      delete cms_award_url(@cms_award)
    end

    assert_redirected_to cms_awards_url
  end
end
