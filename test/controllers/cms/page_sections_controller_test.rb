require 'test_helper'

class Cms::PageSectionsControllerTest < ActionController::TestCase
  setup do
    @cms_page_section = cms_page_sections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cms_page_sections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cms_page_section" do
    assert_difference('Cms::PageSection.count') do
      post :create, cms_page_section: { alignment: @cms_page_section.alignment, body: @cms_page_section.body, image: @cms_page_section.image, position: @cms_page_section.position }
    end

    assert_redirected_to cms_page_section_path(assigns(:cms_page_section))
  end

  test "should show cms_page_section" do
    get :show, id: @cms_page_section
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cms_page_section
    assert_response :success
  end

  test "should update cms_page_section" do
    patch :update, id: @cms_page_section, cms_page_section: { alignment: @cms_page_section.alignment, body: @cms_page_section.body, image: @cms_page_section.image, position: @cms_page_section.position }
    assert_redirected_to cms_page_section_path(assigns(:cms_page_section))
  end

  test "should destroy cms_page_section" do
    assert_difference('Cms::PageSection.count', -1) do
      delete :destroy, id: @cms_page_section
    end

    assert_redirected_to cms_page_sections_path
  end
end
