require 'test_helper'

class DuyurusControllerTest < ActionController::TestCase
  setup do
    @duyuru = duyurus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:duyurus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create duyuru" do
    assert_difference('Duyuru.count') do
      post :create, duyuru: { content: @duyuru.content, date: @duyuru.date, title: @duyuru.title }
    end

    assert_redirected_to duyuru_path(assigns(:duyuru))
  end

  test "should show duyuru" do
    get :show, id: @duyuru
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @duyuru
    assert_response :success
  end

  test "should update duyuru" do
    patch :update, id: @duyuru, duyuru: { content: @duyuru.content, date: @duyuru.date, title: @duyuru.title }
    assert_redirected_to duyuru_path(assigns(:duyuru))
  end

  test "should destroy duyuru" do
    assert_difference('Duyuru.count', -1) do
      delete :destroy, id: @duyuru
    end

    assert_redirected_to duyurus_path
  end
end
