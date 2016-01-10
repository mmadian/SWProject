require 'test_helper'

class GradeClassesControllerTest < ActionController::TestCase
  setup do
    @grade_class = grade_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grade_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grade_class" do
    assert_difference('GradeClass.count') do
      post :create, grade_class: { creator_id: @grade_class.creator_id, modifier_id: @grade_class.modifier_id, name: @grade_class.name }
    end

    assert_redirected_to grade_class_path(assigns(:grade_class))
  end

  test "should show grade_class" do
    get :show, id: @grade_class
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @grade_class
    assert_response :success
  end

  test "should update grade_class" do
    patch :update, id: @grade_class, grade_class: { creator_id: @grade_class.creator_id, modifier_id: @grade_class.modifier_id, name: @grade_class.name }
    assert_redirected_to grade_class_path(assigns(:grade_class))
  end

  test "should destroy grade_class" do
    assert_difference('GradeClass.count', -1) do
      delete :destroy, id: @grade_class
    end

    assert_redirected_to grade_classes_path
  end
end
