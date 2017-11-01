require 'test_helper'

class Cms::SlideshowImagesControllerTest < ActionController::TestCase
  setup do
    @cms_slideshow_image = cms_slideshow_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cms_slideshow_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cms_slideshow_image" do
    assert_difference('Cms::SlideshowImage.count') do
      post :create, cms_slideshow_image: { destination: @cms_slideshow_image.destination, image: @cms_slideshow_image.image }
    end

    assert_redirected_to cms_slideshow_image_path(assigns(:cms_slideshow_image))
  end

  test "should show cms_slideshow_image" do
    get :show, id: @cms_slideshow_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cms_slideshow_image
    assert_response :success
  end

  test "should update cms_slideshow_image" do
    patch :update, id: @cms_slideshow_image, cms_slideshow_image: { destination: @cms_slideshow_image.destination, image: @cms_slideshow_image.image }
    assert_redirected_to cms_slideshow_image_path(assigns(:cms_slideshow_image))
  end

  test "should destroy cms_slideshow_image" do
    assert_difference('Cms::SlideshowImage.count', -1) do
      delete :destroy, id: @cms_slideshow_image
    end

    assert_redirected_to cms_slideshow_images_path
  end
end
