require 'test_helper'

class Cms::ChaptersControllerTest < ActionController::TestCase
  setup do
    @cms_chapter = cms_chapters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cms_chapters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cms_chapter" do
    assert_difference('Cms::Chapter.count') do
      post :create, cms_chapter: { code: @cms_chapter.code, image: @cms_chapter.image, name: @cms_chapter.name, overview: @cms_chapter.overview, president: @cms_chapter.president, president_email: @cms_chapter.president_email, president_school: @cms_chapter.president_school, secretary: @cms_chapter.secretary, secretary: @cms_chapter.secretary, secretary_school: @cms_chapter.secretary_school, treasurer: @cms_chapter.treasurer, treasurer_email: @cms_chapter.treasurer_email, treasurer_school: @cms_chapter.treasurer_school, vice_pres: @cms_chapter.vice_pres, vice_pres_email: @cms_chapter.vice_pres_email, vice_pres_school: @cms_chapter.vice_pres_school }
    end

    assert_redirected_to cms_chapter_path(assigns(:cms_chapter))
  end

  test "should show cms_chapter" do
    get :show, id: @cms_chapter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cms_chapter
    assert_response :success
  end

  test "should update cms_chapter" do
    patch :update, id: @cms_chapter, cms_chapter: { code: @cms_chapter.code, image: @cms_chapter.image, name: @cms_chapter.name, overview: @cms_chapter.overview, president: @cms_chapter.president, president_email: @cms_chapter.president_email, president_school: @cms_chapter.president_school, secretary: @cms_chapter.secretary, secretary: @cms_chapter.secretary, secretary_school: @cms_chapter.secretary_school, treasurer: @cms_chapter.treasurer, treasurer_email: @cms_chapter.treasurer_email, treasurer_school: @cms_chapter.treasurer_school, vice_pres: @cms_chapter.vice_pres, vice_pres_email: @cms_chapter.vice_pres_email, vice_pres_school: @cms_chapter.vice_pres_school }
    assert_redirected_to cms_chapter_path(assigns(:cms_chapter))
  end

  test "should destroy cms_chapter" do
    assert_difference('Cms::Chapter.count', -1) do
      delete :destroy, id: @cms_chapter
    end

    assert_redirected_to cms_chapters_path
  end
end
