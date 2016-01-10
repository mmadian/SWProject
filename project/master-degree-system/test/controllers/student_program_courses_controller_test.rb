require 'test_helper'

class StudentProgramCoursesControllerTest < ActionController::TestCase
  setup do
    @student_program_course = student_program_courses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_program_courses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_program_course" do
    assert_difference('StudentProgramCourse.count') do
      post :create, student_program_course: { creator_id: @student_program_course.creator_id, gradeClass_id: @student_program_course.gradeClass_id, gradeValue: @student_program_course.gradeValue, isComplementaryCourse: @student_program_course.isComplementaryCourse, modifier_id: @student_program_course.modifier_id, programClassSemesterCourse_id: @student_program_course.programClassSemesterCourse_id, studentProgram_id: @student_program_course.studentProgram_id, subscriptionDate: @student_program_course.subscriptionDate }
    end

    assert_redirected_to student_program_course_path(assigns(:student_program_course))
  end

  test "should show student_program_course" do
    get :show, id: @student_program_course
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student_program_course
    assert_response :success
  end

  test "should update student_program_course" do
    patch :update, id: @student_program_course, student_program_course: { creator_id: @student_program_course.creator_id, gradeClass_id: @student_program_course.gradeClass_id, gradeValue: @student_program_course.gradeValue, isComplementaryCourse: @student_program_course.isComplementaryCourse, modifier_id: @student_program_course.modifier_id, programClassSemesterCourse_id: @student_program_course.programClassSemesterCourse_id, studentProgram_id: @student_program_course.studentProgram_id, subscriptionDate: @student_program_course.subscriptionDate }
    assert_redirected_to student_program_course_path(assigns(:student_program_course))
  end

  test "should destroy student_program_course" do
    assert_difference('StudentProgramCourse.count', -1) do
      delete :destroy, id: @student_program_course
    end

    assert_redirected_to student_program_courses_path
  end
end
