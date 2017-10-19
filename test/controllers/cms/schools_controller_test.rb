require 'test_helper'

class Cms::SchoolsControllerTest < ActionController::TestCase
  setup do
    @cms_school = cms_schools(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cms_schools)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cms_school" do
    assert_difference('Cms::School.count') do
      post :create, cms_school: { chapter_id: @cms_school.chapter_id, code: @cms_school.code, name: @cms_school.name, rep_email: @cms_school.rep_email, representative: @cms_school.representative, website: @cms_school.website }
    end

    assert_redirected_to cms_school_path(assigns(:cms_school))
  end

  test "should show cms_school" do
    get :show, id: @cms_school
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cms_school
    assert_response :success
  end

  test "should update cms_school" do
    patch :update, id: @cms_school, cms_school: { chapter_id: @cms_school.chapter_id, code: @cms_school.code, name: @cms_school.name, rep_email: @cms_school.rep_email, representative: @cms_school.representative, website: @cms_school.website }
    assert_redirected_to cms_school_path(assigns(:cms_school))
  end

  test "should destroy cms_school" do
    assert_difference('Cms::School.count', -1) do
      delete :destroy, id: @cms_school
    end

    assert_redirected_to cms_schools_path
  end
end
