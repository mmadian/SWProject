require 'test_helper'

class ProgramClassSemesterCoursesControllerTest < ActionController::TestCase
  setup do
    @program_class_semester_course = program_class_semester_courses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:program_class_semester_courses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create program_class_semester_course" do
    assert_difference('ProgramClassSemesterCourse.count') do
      post :create, program_class_semester_course: { CourseClass_id: @program_class_semester_course.CourseClass_id, ProgramClass_id: @program_class_semester_course.ProgramClass_id, courseCode: @program_class_semester_course.courseCode, course_id: @program_class_semester_course.course_id, creator_id: @program_class_semester_course.creator_id, directedReading: @program_class_semester_course.directedReading, minimamNumberOfStudent: @program_class_semester_course.minimamNumberOfStudent, modifier_id: @program_class_semester_course.modifier_id, semester_id: @program_class_semester_course.semester_id, specificCourseName: @program_class_semester_course.specificCourseName, year: @program_class_semester_course.year }
    end

    assert_redirected_to program_class_semester_course_path(assigns(:program_class_semester_course))
  end

  test "should show program_class_semester_course" do
    get :show, id: @program_class_semester_course
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @program_class_semester_course
    assert_response :success
  end

  test "should update program_class_semester_course" do
    patch :update, id: @program_class_semester_course, program_class_semester_course: { CourseClass_id: @program_class_semester_course.CourseClass_id, ProgramClass_id: @program_class_semester_course.ProgramClass_id, courseCode: @program_class_semester_course.courseCode, course_id: @program_class_semester_course.course_id, creator_id: @program_class_semester_course.creator_id, directedReading: @program_class_semester_course.directedReading, minimamNumberOfStudent: @program_class_semester_course.minimamNumberOfStudent, modifier_id: @program_class_semester_course.modifier_id, semester_id: @program_class_semester_course.semester_id, specificCourseName: @program_class_semester_course.specificCourseName, year: @program_class_semester_course.year }
    assert_redirected_to program_class_semester_course_path(assigns(:program_class_semester_course))
  end

  test "should destroy program_class_semester_course" do
    assert_difference('ProgramClassSemesterCourse.count', -1) do
      delete :destroy, id: @program_class_semester_course
    end

    assert_redirected_to program_class_semester_courses_path
  end
end
