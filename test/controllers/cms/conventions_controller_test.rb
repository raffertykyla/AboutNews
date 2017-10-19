require 'test_helper'

class Cms::ConventionsControllerTest < ActionController::TestCase
  setup do
    @cms_convention = cms_conventions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cms_conventions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cms_convention" do
    assert_difference('Cms::Convention.count') do
      post :create, cms_convention: { address: @cms_convention.address, city: @cms_convention.city, email: @cms_convention.email, fax: @cms_convention.fax, image: @cms_convention.image, phone: @cms_convention.phone, state: @cms_convention.state, theme: @cms_convention.theme, what: @cms_convention.what, when: @cms_convention.when, where: @cms_convention.where, year: @cms_convention.year, zip_code: @cms_convention.zip_code }
    end

    assert_redirected_to cms_convention_path(assigns(:cms_convention))
  end

  test "should show cms_convention" do
    get :show, id: @cms_convention
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cms_convention
    assert_response :success
  end

  test "should update cms_convention" do
    patch :update, id: @cms_convention, cms_convention: { address: @cms_convention.address, city: @cms_convention.city, email: @cms_convention.email, fax: @cms_convention.fax, image: @cms_convention.image, phone: @cms_convention.phone, state: @cms_convention.state, theme: @cms_convention.theme, what: @cms_convention.what, when: @cms_convention.when, where: @cms_convention.where, year: @cms_convention.year, zip_code: @cms_convention.zip_code }
    assert_redirected_to cms_convention_path(assigns(:cms_convention))
  end

  test "should destroy cms_convention" do
    assert_difference('Cms::Convention.count', -1) do
      delete :destroy, id: @cms_convention
    end

    assert_redirected_to cms_conventions_path
  end
end
