require 'test_helper'

class Cms::RolesControllerTest < ActionController::TestCase
  setup do
    @cms_role = cms_roles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cms_roles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cms_role" do
    assert_difference('Cms::Role.count') do
      post :create, cms_role: { title: @cms_role.title }
    end

    assert_redirected_to cms_role_path(assigns(:cms_role))
  end

  test "should show cms_role" do
    get :show, id: @cms_role
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cms_role
    assert_response :success
  end

  test "should update cms_role" do
    patch :update, id: @cms_role, cms_role: { title: @cms_role.title }
    assert_redirected_to cms_role_path(assigns(:cms_role))
  end

  test "should destroy cms_role" do
    assert_difference('Cms::Role.count', -1) do
      delete :destroy, id: @cms_role
    end

    assert_redirected_to cms_roles_path
  end
end
