require 'test_helper'

class FilmmakersControllerTest < ActionController::TestCase
  setup do
    @filmmaker = filmmakers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:filmmakers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create filmmaker" do
    assert_difference('Filmmaker.count') do
      post :create, filmmaker: { email: @filmmaker.email, name: @filmmaker.name, phone: @filmmaker.phone }
    end

    assert_redirected_to filmmaker_path(assigns(:filmmaker))
  end

  test "should show filmmaker" do
    get :show, id: @filmmaker
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @filmmaker
    assert_response :success
  end

  test "should update filmmaker" do
    patch :update, id: @filmmaker, filmmaker: { email: @filmmaker.email, name: @filmmaker.name, phone: @filmmaker.phone }
    assert_redirected_to filmmaker_path(assigns(:filmmaker))
  end

  test "should destroy filmmaker" do
    assert_difference('Filmmaker.count', -1) do
      delete :destroy, id: @filmmaker
    end

    assert_redirected_to filmmakers_path
  end
end
