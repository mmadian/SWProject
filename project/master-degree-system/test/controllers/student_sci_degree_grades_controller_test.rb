require 'test_helper'

class StudentSciDegreeGradesControllerTest < ActionController::TestCase
  setup do
    @student_sci_degree_grade = student_sci_degree_grades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_sci_degree_grades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_sci_degree_grade" do
    assert_difference('StudentSciDegreeGrade.count') do
      post :create, student_sci_degree_grade: { creator_id: @student_sci_degree_grade.creator_id, grade: @student_sci_degree_grade.grade, modifier_id: @student_sci_degree_grade.modifier_id, studentSciDegree_id: @student_sci_degree_grade.studentSciDegree_id, year: @student_sci_degree_grade.year }
    end

    assert_redirected_to student_sci_degree_grade_path(assigns(:student_sci_degree_grade))
  end

  test "should show student_sci_degree_grade" do
    get :show, id: @student_sci_degree_grade
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student_sci_degree_grade
    assert_response :success
  end

  test "should update student_sci_degree_grade" do
    patch :update, id: @student_sci_degree_grade, student_sci_degree_grade: { creator_id: @student_sci_degree_grade.creator_id, grade: @student_sci_degree_grade.grade, modifier_id: @student_sci_degree_grade.modifier_id, studentSciDegree_id: @student_sci_degree_grade.studentSciDegree_id, year: @student_sci_degree_grade.year }
    assert_redirected_to student_sci_degree_grade_path(assigns(:student_sci_degree_grade))
  end

  test "should destroy student_sci_degree_grade" do
    assert_difference('StudentSciDegreeGrade.count', -1) do
      delete :destroy, id: @student_sci_degree_grade
    end

    assert_redirected_to student_sci_degree_grades_path
  end
end
