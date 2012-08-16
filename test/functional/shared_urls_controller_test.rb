require 'test_helper'

class SharedUrlsControllerTest < ActionController::TestCase
  setup do
    @shared_url = shared_urls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shared_urls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shared_url" do
    assert_difference('SharedUrl.count') do
      post :create, shared_url: { title: @shared_url.title, url: @shared_url.url }
    end

    assert_redirected_to shared_url_path(assigns(:shared_url))
  end

  test "should show shared_url" do
    get :show, id: @shared_url
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shared_url
    assert_response :success
  end

  test "should update shared_url" do
    put :update, id: @shared_url, shared_url: { title: @shared_url.title, url: @shared_url.url }
    assert_redirected_to shared_url_path(assigns(:shared_url))
  end

  test "should destroy shared_url" do
    assert_difference('SharedUrl.count', -1) do
      delete :destroy, id: @shared_url
    end

    assert_redirected_to shared_urls_path
  end
end
