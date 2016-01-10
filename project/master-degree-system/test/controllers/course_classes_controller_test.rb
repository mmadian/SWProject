require 'test_helper'

class CourseClassesControllerTest < ActionController::TestCase
  setup do
    @course_class = course_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:course_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course_class" do
    assert_difference('CourseClass.count') do
      post :create, course_class: { courseClassName: @course_class.courseClassName, creator_id: @course_class.creator_id, modifier_id: @course_class.modifier_id }
    end

    assert_redirected_to course_class_path(assigns(:course_class))
  end

  test "should show course_class" do
    get :show, id: @course_class
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course_class
    assert_response :success
  end

  test "should update course_class" do
    patch :update, id: @course_class, course_class: { courseClassName: @course_class.courseClassName, creator_id: @course_class.creator_id, modifier_id: @course_class.modifier_id }
    assert_redirected_to course_class_path(assigns(:course_class))
  end

  test "should destroy course_class" do
    assert_difference('CourseClass.count', -1) do
      delete :destroy, id: @course_class
    end

    assert_redirected_to course_classes_path
  end
end
