require 'test_helper'

class FormatsControllerTest < ActionController::TestCase
  setup do
    @format = formats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:formats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create format" do
    assert_difference('Format.count') do
      post :create, format: { tape_format: @format.tape_format }
    end

    assert_redirected_to format_path(assigns(:format))
  end

  test "should show format" do
    get :show, id: @format
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @format
    assert_response :success
  end

  test "should update format" do
    patch :update, id: @format, format: { tape_format: @format.tape_format }
    assert_redirected_to format_path(assigns(:format))
  end

  test "should destroy format" do
    assert_difference('Format.count', -1) do
      delete :destroy, id: @format
    end

    assert_redirected_to formats_path
  end
end
