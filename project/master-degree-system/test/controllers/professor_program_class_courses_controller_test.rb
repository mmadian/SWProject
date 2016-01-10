require 'test_helper'

class ProfessorProgramClassCoursesControllerTest < ActionController::TestCase
  setup do
    @professor_program_class_course = professor_program_class_courses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:professor_program_class_courses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create professor_program_class_course" do
    assert_difference('ProfessorProgramClassCourse.count') do
      post :create, professor_program_class_course: { creator_id: @professor_program_class_course.creator_id, modifier_id: @professor_program_class_course.modifier_id, professor_id: @professor_program_class_course.professor_id, programClassSemesterCourse: @professor_program_class_course.programClassSemesterCourse }
    end

    assert_redirected_to professor_program_class_course_path(assigns(:professor_program_class_course))
  end

  test "should show professor_program_class_course" do
    get :show, id: @professor_program_class_course
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @professor_program_class_course
    assert_response :success
  end

  test "should update professor_program_class_course" do
    patch :update, id: @professor_program_class_course, professor_program_class_course: { creator_id: @professor_program_class_course.creator_id, modifier_id: @professor_program_class_course.modifier_id, professor_id: @professor_program_class_course.professor_id, programClassSemesterCourse: @professor_program_class_course.programClassSemesterCourse }
    assert_redirected_to professor_program_class_course_path(assigns(:professor_program_class_course))
  end

  test "should destroy professor_program_class_course" do
    assert_difference('ProfessorProgramClassCourse.count', -1) do
      delete :destroy, id: @professor_program_class_course
    end

    assert_redirected_to professor_program_class_courses_path
  end
end
