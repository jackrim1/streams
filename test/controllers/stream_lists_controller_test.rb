require 'test_helper'

class StreamListsControllerTest < ActionController::TestCase
  setup do
    @stream_list = stream_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stream_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stream_list" do
    assert_difference('StreamList.count') do
      post :create, stream_list: { description: @stream_list.description, title: @stream_list.title }
    end

    assert_redirected_to stream_list_path(assigns(:stream_list))
  end

  test "should show stream_list" do
    get :show, id: @stream_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stream_list
    assert_response :success
  end

  test "should update stream_list" do
    patch :update, id: @stream_list, stream_list: { description: @stream_list.description, title: @stream_list.title }
    assert_redirected_to stream_list_path(assigns(:stream_list))
  end

  test "should destroy stream_list" do
    assert_difference('StreamList.count', -1) do
      delete :destroy, id: @stream_list
    end

    assert_redirected_to stream_lists_path
  end
end
