require 'test_helper'

class TapeFormatsControllerTest < ActionController::TestCase
  setup do
    @tape_format = tape_formats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tape_formats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tape_format" do
    assert_difference('TapeFormat.count') do
      post :create, tape_format: { tape_format: @tape_format.tape_format }
    end

    assert_redirected_to tape_format_path(assigns(:tape_format))
  end

  test "should show tape_format" do
    get :show, id: @tape_format
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tape_format
    assert_response :success
  end

  test "should update tape_format" do
    patch :update, id: @tape_format, tape_format: { tape_format: @tape_format.tape_format }
    assert_redirected_to tape_format_path(assigns(:tape_format))
  end

  test "should destroy tape_format" do
    assert_difference('TapeFormat.count', -1) do
      delete :destroy, id: @tape_format
    end

    assert_redirected_to tape_formats_path
  end
end
