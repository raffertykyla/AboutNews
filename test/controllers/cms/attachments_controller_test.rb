require 'test_helper'

class Cms::AttachmentsControllerTest < ActionController::TestCase
  setup do
    @cms_attachment = cms_attachments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cms_attachments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cms_attachment" do
    assert_difference('Cms::Attachment.count') do
      post :create, cms_attachment: { document: @cms_attachment.document, title: @cms_attachment.title }
    end

    assert_redirected_to cms_attachment_path(assigns(:cms_attachment))
  end

  test "should show cms_attachment" do
    get :show, id: @cms_attachment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cms_attachment
    assert_response :success
  end

  test "should update cms_attachment" do
    patch :update, id: @cms_attachment, cms_attachment: { document: @cms_attachment.document, title: @cms_attachment.title }
    assert_redirected_to cms_attachment_path(assigns(:cms_attachment))
  end

  test "should destroy cms_attachment" do
    assert_difference('Cms::Attachment.count', -1) do
      delete :destroy, id: @cms_attachment
    end

    assert_redirected_to cms_attachments_path
  end
end
