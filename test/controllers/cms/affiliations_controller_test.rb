require 'test_helper'

class Cms::AffiliationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cms_affiliation = cms_affiliations(:one)
  end

  test "should get index" do
    get cms_affiliations_url
    assert_response :success
  end

  test "should get new" do
    get new_cms_affiliation_url
    assert_response :success
  end

  test "should create cms_affiliation" do
    assert_difference('Cms::Affiliation.count') do
      post cms_affiliations_url, params: { cms_affiliation: { image: @cms_affiliation.image, url: @cms_affiliation.url } }
    end

    assert_redirected_to cms_affiliation_url(Cms::Affiliation.last)
  end

  test "should show cms_affiliation" do
    get cms_affiliation_url(@cms_affiliation)
    assert_response :success
  end

  test "should get edit" do
    get edit_cms_affiliation_url(@cms_affiliation)
    assert_response :success
  end

  test "should update cms_affiliation" do
    patch cms_affiliation_url(@cms_affiliation), params: { cms_affiliation: { image: @cms_affiliation.image, url: @cms_affiliation.url } }
    assert_redirected_to cms_affiliation_url(@cms_affiliation)
  end

  test "should destroy cms_affiliation" do
    assert_difference('Cms::Affiliation.count', -1) do
      delete cms_affiliation_url(@cms_affiliation)
    end

    assert_redirected_to cms_affiliations_url
  end
end
