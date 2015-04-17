require 'test_helper'

class PhysicalsControllerTest < ActionController::TestCase
  setup do
    @physical = physicals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:physicals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create physical" do
    assert_difference('Physical.count') do
      post :create, physical: { brand_id: @physical.brand_id, condition_id: @physical.condition_id, date: @physical.date, filmaker_id: @physical.filmaker_id, format_id: @physical.format_id, label_date: @physical.label_date, label_info: @physical.label_info, label_title: @physical.label_title, location: @physical.location, master_status: @physical.master_status, new_box: @physical.new_box, notes: @physical.notes, old_box: @physical.old_box, owner_id: @physical.owner_id, tape: @physical.tape, title: @physical.title }
    end

    assert_redirected_to physical_path(assigns(:physical))
  end

  test "should show physical" do
    get :show, id: @physical
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @physical
    assert_response :success
  end

  test "should update physical" do
    patch :update, id: @physical, physical: { brand_id: @physical.brand_id, condition_id: @physical.condition_id, date: @physical.date, filmaker_id: @physical.filmaker_id, format_id: @physical.format_id, label_date: @physical.label_date, label_info: @physical.label_info, label_title: @physical.label_title, location: @physical.location, master_status: @physical.master_status, new_box: @physical.new_box, notes: @physical.notes, old_box: @physical.old_box, owner_id: @physical.owner_id, tape: @physical.tape, title: @physical.title }
    assert_redirected_to physical_path(assigns(:physical))
  end

  test "should destroy physical" do
    assert_difference('Physical.count', -1) do
      delete :destroy, id: @physical
    end

    assert_redirected_to physicals_path
  end
end
