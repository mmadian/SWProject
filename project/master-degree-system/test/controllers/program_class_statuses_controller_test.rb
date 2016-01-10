require 'test_helper'

class ProgramClassStatusesControllerTest < ActionController::TestCase
  setup do
    @program_class_status = program_class_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:program_class_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create program_class_status" do
    assert_difference('ProgramClassStatus.count') do
      post :create, program_class_status: { creator_id: @program_class_status.creator_id, modifier_id: @program_class_status.modifier_id, preProgramClass_id: @program_class_status.preProgramClass_id, programClass_id: @program_class_status.programClass_id, status: @program_class_status.status }
    end

    assert_redirected_to program_class_status_path(assigns(:program_class_status))
  end

  test "should show program_class_status" do
    get :show, id: @program_class_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @program_class_status
    assert_response :success
  end

  test "should update program_class_status" do
    patch :update, id: @program_class_status, program_class_status: { creator_id: @program_class_status.creator_id, modifier_id: @program_class_status.modifier_id, preProgramClass_id: @program_class_status.preProgramClass_id, programClass_id: @program_class_status.programClass_id, status: @program_class_status.status }
    assert_redirected_to program_class_status_path(assigns(:program_class_status))
  end

  test "should destroy program_class_status" do
    assert_difference('ProgramClassStatus.count', -1) do
      delete :destroy, id: @program_class_status
    end

    assert_redirected_to program_class_statuses_path
  end
end
