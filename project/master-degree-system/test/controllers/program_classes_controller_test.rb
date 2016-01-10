require 'test_helper'

class ProgramClassesControllerTest < ActionController::TestCase
  setup do
    @program_class = program_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:program_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create program_class" do
    assert_difference('ProgramClass.count') do
      post :create, program_class: { creator_id: @program_class.creator_id, duration: @program_class.duration, extensionPeriod: @program_class.extensionPeriod, modifier_id: @program_class.modifier_id, name: @program_class.name, numberOfCourses: @program_class.numberOfCourses }
    end

    assert_redirected_to program_class_path(assigns(:program_class))
  end

  test "should show program_class" do
    get :show, id: @program_class
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @program_class
    assert_response :success
  end

  test "should update program_class" do
    patch :update, id: @program_class, program_class: { creator_id: @program_class.creator_id, duration: @program_class.duration, extensionPeriod: @program_class.extensionPeriod, modifier_id: @program_class.modifier_id, name: @program_class.name, numberOfCourses: @program_class.numberOfCourses }
    assert_redirected_to program_class_path(assigns(:program_class))
  end

  test "should destroy program_class" do
    assert_difference('ProgramClass.count', -1) do
      delete :destroy, id: @program_class
    end

    assert_redirected_to program_classes_path
  end
end
