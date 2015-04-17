require 'test_helper'

class DigitalsControllerTest < ActionController::TestCase
  setup do
    @digital = digitals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:digitals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create digital" do
    assert_difference('Digital.count') do
      post :create, digital: { description: @digital.description, file: @digital.file, link: @digital.link, project_id: @digital.project_id, title: @digital.title, type: @digital.type }
    end

    assert_redirected_to digital_path(assigns(:digital))
  end

  test "should show digital" do
    get :show, id: @digital
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @digital
    assert_response :success
  end

  test "should update digital" do
    patch :update, id: @digital, digital: { description: @digital.description, file: @digital.file, link: @digital.link, project_id: @digital.project_id, title: @digital.title, type: @digital.type }
    assert_redirected_to digital_path(assigns(:digital))
  end

  test "should destroy digital" do
    assert_difference('Digital.count', -1) do
      delete :destroy, id: @digital
    end

    assert_redirected_to digitals_path
  end
end
